defmodule ThatApp.BlogsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ThatApp.Blogs` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        description: "some description",
        tags: "some tags",
        title: "some title"
      })
      |> ThatApp.Blogs.create_post()

    post
  end
end
