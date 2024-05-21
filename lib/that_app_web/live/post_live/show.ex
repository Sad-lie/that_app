defmodule ThatAppWeb.PostLive.Show do
  use ThatAppWeb, :live_view

  alias ThatApp.Blogs

  @impl true
  def mount(params, session, socket) do
    IO.puts("_________________this is mount show _______________-")
    IO.inspect(params)
    IO.inspect(session)
    IO.inspect(socket)
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    IO.puts("_________________this is handle_params show _______________-")
    IO.inspect(socket)
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:post, Blogs.get_post!(id))}
  end

  defp page_title(:show), do: "Show Post"
  defp page_title(:edit), do: "Edit Post"
end
