defmodule ThatAppWeb.PostLive.Index do
  use ThatAppWeb, :live_view

  alias ThatApp.Blogs
  alias ThatApp.Blogs.Post

  @impl true
  def mount(params, _session, socket) do
    IO.puts("----------this is mount--------")
    IO.inspect(params)
    IO.inspect(socket)
    {:ok, stream(socket, :posts, Blogs.list_posts())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    IO.puts("----------this is handle params --------")
    IO.inspect(params)
    IO.inspect(socket)
    {:noreply, apply_action(socket, socket.assigns.live_action, params)}
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    IO.puts("----------this is apply_action_edit user--------")
    IO.inspect(:edit)
    IO.inspect(socket)
    socket
    |> assign(:page_title, "Edit Post")
    |> assign(:post, Blogs.get_post!(id))
  end

  defp apply_action(socket, :new, _params) do
    IO.puts("----------this is apply_action_new user--------")
    IO.inspect(:new)
    IO.inspect(socket)
    socket
    |> assign(:page_title, "New Post")
    |> assign(:post, %Post{})
  end

  defp apply_action(socket, :index, _params) do
    IO.puts("----------this is apply_action_index  user--------")
    IO.inspect(:index)
    IO.inspect(socket)
    socket
    |> assign(:page_title, "Listing Posts")
    |> assign(:post, nil)
  end

  @impl true
  def handle_info({ThatAppWeb.PostLive.FormComponent, {:saved, post}}, socket) do
    IO.puts("----------this is handle info user--------")
    IO.inspect(:saved)
    IO.inspect(socket)
    {:noreply, stream_insert(socket, :posts, post)}
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    IO.puts("----------this is handle event user--------")
    IO.inspect(id)
    IO.inspect(socket)
    post = Blogs.get_post!(id)
    {:ok, _} = Blogs.delete_post(post)

    {:noreply, stream_delete(socket, :posts, post)}
  end
end
