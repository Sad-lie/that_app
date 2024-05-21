defmodule ThatAppWeb.PostLive.FormComponent do
  use ThatAppWeb, :live_component

  alias ThatApp.Blogs

  @impl true
  def render(assigns) do
    IO.puts("================= this is render save post =================")
    IO.inspect(assigns)
    ~H"""
    <div>
      <.header>
        <%= @title %>
        <:subtitle>Use this form to manage post records in your database.</:subtitle>
      </.header>

      <.simple_form
        for={@form}
        id="post-form"
        phx-target={@myself}
        phx-change="validate"
        phx-submit="save"
      >
        <.input field={@form[:title]} type="text" label="Title" />
        <.input field={@form[:tags]} type="text" label="Tags" />
        <.input field={@form[:description]} type="text" label="Description" />
        <:actions>
          <.button phx-disable-with="Saving...">Save Post</.button>
        </:actions>
      </.simple_form>
    </div>
    """
  end

  @impl true
  def update(%{post: post} = assigns, socket) do
    IO.puts("================= this is update post =================")
    IO.inspect(assigns)
    IO.inspect(socket)
    changeset = Blogs.change_post(post)

    {:ok,
     socket
     |> assign(assigns)
     |> assign_form(changeset)}
  end

  @impl true
  def handle_event("validate", %{"post" => post_params}, socket) do
    IO.puts("================= this is handle event validate post  =================")
    IO.inspect(post_params)
    IO.inspect(socket)
    changeset =
      socket.assigns.post
      |> Blogs.change_post(post_params)
      |> Map.put(:action, :validate)

    {:noreply, assign_form(socket, changeset)}
  end

  def handle_event("save", %{"post" => post_params}, socket) do
    IO.puts("================= this is handle_event save post =================")
    IO.inspect(post_params)
    IO.inspect(socket)
    save_post(socket, socket.assigns.action, post_params)
  end

  defp save_post(socket, :edit, post_params) do
    IO.puts("================= this is save_event edit post =================")
    #IO.inspect(post_params)
    IO.inspect(socket)
    case Blogs.update_post(socket.assigns.post, post_params) do
      {:ok, post} ->
        notify_parent({:saved, post})

        {:noreply,
         socket
         |> put_flash(:info, "Post updated successfully")
         |> push_patch(to: socket.assigns.patch)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign_form(socket, changeset)}
    end
  end

  defp save_post(socket, :new, post_params) do
    IO.puts("================= this is save_event new post =================")
    IO.inspect(:new)
    IO.inspect(post_params)
    IO.inspect(socket)
    case Blogs.create_post(post_params) do
      {:ok, post} ->
        notify_parent({:saved, post})

        {:noreply,
         socket
         |> put_flash(:info, "Post created successfully")
         |> push_patch(to: socket.assigns.patch)}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign_form(socket, changeset)}
    end
  end

  defp assign_form(socket, %Ecto.Changeset{} = changeset) do
    IO.puts("================= this is assign_form post =================")
    IO.inspect(changeset)
    IO.inspect(socket)
    assign(socket, :form, to_form(changeset))
  end

  defp notify_parent(msg) do
  IO.puts("================= this is notify_parant post =================")
  IO.inspect(msg)

    send(self(), {__MODULE__, msg})
  end
end
