defmodule ThatApp.BlogsTest do
  use ThatApp.DataCase

  alias ThatApp.Blogs

  describe "posts" do
    alias ThatApp.Blogs.Post

    import ThatApp.BlogsFixtures

    @invalid_attrs %{description: nil, title: nil, tags: nil}

    test "list_posts/0 returns all posts" do
      post = post_fixture()
      assert Blogs.list_posts() == [post]
    end

    test "get_post!/1 returns the post with given id" do
      post = post_fixture()
      assert Blogs.get_post!(post.id) == post
    end

    test "create_post/1 with valid data creates a post" do
      valid_attrs = %{description: "some description", title: "some title", tags: "some tags"}

      assert {:ok, %Post{} = post} = Blogs.create_post(valid_attrs)
      assert post.description == "some description"
      assert post.title == "some title"
      assert post.tags == "some tags"
    end

    test "create_post/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Blogs.create_post(@invalid_attrs)
    end

    test "update_post/2 with valid data updates the post" do
      post = post_fixture()
      update_attrs = %{description: "some updated description", title: "some updated title", tags: "some updated tags"}

      assert {:ok, %Post{} = post} = Blogs.update_post(post, update_attrs)
      assert post.description == "some updated description"
      assert post.title == "some updated title"
      assert post.tags == "some updated tags"
    end

    test "update_post/2 with invalid data returns error changeset" do
      post = post_fixture()
      assert {:error, %Ecto.Changeset{}} = Blogs.update_post(post, @invalid_attrs)
      assert post == Blogs.get_post!(post.id)
    end

    test "delete_post/1 deletes the post" do
      post = post_fixture()
      assert {:ok, %Post{}} = Blogs.delete_post(post)
      assert_raise Ecto.NoResultsError, fn -> Blogs.get_post!(post.id) end
    end

    test "change_post/1 returns a post changeset" do
      post = post_fixture()
      assert %Ecto.Changeset{} = Blogs.change_post(post)
    end
  end
end
