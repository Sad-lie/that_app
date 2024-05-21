defmodule ThatAppWeb.AuthLive.Auth do
  use ThatAppWeb, :live_view

  alias ThatApp.Accounts
  alias ThatApp.Accounts.User
  alias ThatAppWeb.Auth.Guardian

  @impl true
  def mount(_params, _session, socket) do
    changeset = Accounts.change_user(%User{})
    {:ok, assign(socket, form: changeset, live_action: nil)}
  end

  @impl true
  def handle_params(params, _url, socket) do
    live_action = socket.assigns.live_action || :home
    {:noreply, apply_action(socket, live_action, params)}
  end

  defp apply_action(socket, :edit_user, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit User")
    |> assign(:user, Accounts.get_user!(id))
  end

  defp apply_action(socket, :log_in, %{}) do
    socket
    |> assign(:page_title, "Log in User")
    |> assign(:user, %User{})
  end

  defp apply_action(socket, :sign_up, _params) do
    socket
    |> assign(:page_title, "Sign Up User")
    |> assign(:user, %User{})
  end

  defp apply_action(socket, :home, _params) do
    socket
    |> assign(:page_title, "Welcome")
    |> assign(:user, %User{})
  end

  @impl true
  def handle_info({ThatAppWeb.AuthLive.FormComponent, {:saved, user}}, socket) do
    {:noreply, stream_insert(socket, :users, user)}
  end

  @impl true
  def handle_event("log_in", %{"user" => user_params}, socket) do
    case Guardian.authenticate(user_params) do
      {:ok, user} ->
        Guardian.create_token(user)
        {:noreply, redirect(socket, to: "/")}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, changeset: changeset)}
    end
  end

  @impl true
  def handle_event("sign_up", %{"user" => user_params}, socket) do
    case Accounts.create_user(user_params) do
      {:ok, user} ->
        {:noreply, redirect(socket, to: "/user/#{user.id}")}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, changeset: changeset)}
    end
  end

  @impl true
  def handle_event("validate", %{"user" => user_params}, socket) do
    changeset =
      %User{}
      |> Accounts.change_user(user_params)
      |> Map.put(:action, :insert)

    {:noreply, assign(socket, changeset: changeset)}
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    user = Accounts.get_user!(id)
    {:ok, _} = Accounts.delete_user(user)

    {:noreply, stream_delete(socket, :users, user)}
  end

  def __live__(_params) do
    %Phoenix.LiveView.Socket{}
  end
end


# defmodule ThatAppWeb.AuthLive.Auth do
#   use ThatAppWeb, :live_view

#   alias ThatApp.Accounts
#   alias ThatApp.Accounts.User
#   alias ThatAppWeb.Auth.Guardian

#   @impl true
#   def mount(_params, _session, socket) do
#     changeset = Accounts.change_user(%User{})
#     {:ok, assign(socket, form: changeset, live_action: nil)}
#   end


#   @impl true
#   def handle_params(params, _url, socket) do
#     live_action = socket.assigns.live_action || :home
#     {:noreply, apply_action(socket, live_action, params)}
#   end

#   defp apply_action(socket, :edit_user, %{"id" => id}) do
#     socket
#     |> assign(:page_title, "Edit User")
#     |> assign(:user, Accounts.get_user!(id))
#   end

#   defp apply_action(socket, :edit_user, %{}) do
#     socket
#     |> assign(:page_title, "Edit User")
#     |> assign(:user, nil)  # Or handle this case appropriately
#   end

#   defp apply_action(socket, :log_in, %{}) do
#     socket
#     |> assign(:page_title, "Log in User")
#     |> assign(:user, %{})
#   end

#   defp apply_action(socket, :sign_up, _params) do
#     socket
#     |> assign(:page_title, "Sign Up User")
#     |> assign(:user, %User{})
#   end

#   defp apply_action(socket, :home, _params) do
#     IO.puts("----------this is apply_action_index  user--------")
#     IO.inspect(:index)
#     IO.inspect(socket)
#     socket
#     |> assign(:page_title, "Listing Posts")
#     |> assign(:user, nil)
#   end

#   @impl true
#   def handle_info({ThatAppWeb.AuthLive.FormComponent, {:saved, user}}, socket) do
#     {:noreply, stream_insert(socket, :users, user)}
#   end

#   def handle_event("log_in", %{"user" => user_params}, socket) do
#     case Guardian.authenticate(user_params) do
#       {:ok, user} ->
#         Guardian.create_token(user)
#         {:noreply, redirect(socket, to: "/")}

#       {:error, %Ecto.Changeset{} = changeset} ->
#         {:noreply, assign(socket, changeset: changeset)}
#     end
#   end

#   def handle_event("sign_up", %{"user" => user_params}, socket) do
#     case Accounts.create_user(user_params) do
#       {:ok, user} ->
#         {:noreply, redirect(socket, to: "/user/#{user.id}")}

#       {:error, %Ecto.Changeset{} = changeset} ->
#         {:noreply, assign(socket, changeset: changeset)}
#     end
#   end

#   def handle_event("validate", %{"user" => user_params}, socket) do
#     changeset =
#       %User{}
#       |> Accounts.change_user(user_params)
#       |> Map.put(:action, :insert)

#     {:noreply, assign(socket, changeset: changeset)}
#   end

#   @impl true
#   def handle_event("delete", %{"id" => id}, socket) do
#     user = Accounts.get_user!(id)
#     {:ok, _} = Accounts.delete_user(user)

#     {:noreply, stream_delete(socket, :users, user)}
#   end

#   def __live__(_params) do
#     %Phoenix.LiveView.Socket{}
#   end
# end


# defmodule ThatAppWeb.AuthLive.Auth do
#   use ThatAppWeb, :live_view

#   alias ThatApp.Accounts
#   alias ThatApp.Accounts.User
#   alias ThatAppWed.Auth.Guardian

#   @impl true
#   # def mount(_params, _session, socket) do
#   #   {:ok, stream(socket, :users, Accounts.list_users())}
#   # end

#   # def mount(_params, _session, socket) do
#   #   {:ok, assign(socket, changeset: Accounts.change_user(%Accounts.User{}))}
#   # end
#   # def mount(_params, _session, socket) do
#   #   {:ok, socket}
#   # end

#   @impl true
#   def mount(_params, _session, socket) do
#     changeset = ThatApp.Accounts.change_user(%User{})
#     {:ok, assign(socket, form: changeset)}
#   end
#   # def mount(socket) do
#   #   changeset = Accounts.change_user(%User{})
#   #   {:ok, assign(socket, form: to_form(changeset))}
#   # end



#   def render(assigns) do
#     ~H"""
#     <.modal :if={@live_action == :log_in} id="user-modal" show on_cancel={JS.patch(~p"/users")}>
#       <.live_component
#         module={ThatAppWeb.AuthLive.FormComponent}
#         id="login-form"
#         title="Log in"
#         action={@live_action}
#       />
#     </.modal>
#     """
#   end
#   @impl true
#   def handle_params(params, _url, socket) do
#     {:noreply, apply_action(socket, socket.assigns.live_action, params)}
#   end


#   # defp apply_action(socket, :show_user, _params) do
#   #   socket
#   #   |> assign(:page_title, "Show User")
#   #   |> assign(:user, nil)
#   # end

#   defp apply_action(socket, :edit_user, %{"id" => id}) do
#     socket
#     |> assign(:page_title, "Edit User")
#     |> assign(:user, Accounts.get_user!(id))
#   end

#   # Edit

#   defp apply_action(socket, :log_in, %{}) do
#     socket
#     |> assign(:page_title, "Log in User")
#     |> assign(:user, %{})
#   end

#   # New
#   defp apply_action(socket, :sign_up, _params) do
#     socket
#     |> assign(:page_title, "Sign Up User")
#     |> assign(:user, %User{})
#   end

#   defp apply_action(socket, :home, _params) do
#     IO.puts("----------this is apply_action_index  user--------")
#     IO.inspect(:index)
#     IO.inspect(socket)
#     socket
#     |> assign(:page_title, "Listing Posts")
#     |> assign(:user, nil)
#   end


#   @impl true
#   def handle_info({ThatAppWeb.AuthLive.FormComponent, {:saved, user}}, socket) do
#     {:noreply, stream_insert(socket, :users, user)}
#   end

#   def handle_event("log_in", %{"user" => user_params}, socket) do
#     case Guardian.authenticate(user_params) do
#       {:ok, user} ->
#         Guardian.create_token(user)
#         {:noreply, redirect(socket, to: "/")}

#       {:error, %Ecto.Changeset{} = changeset} ->
#         {:noreply, assign(socket, changeset: changeset)}
#     end
#   end
#   def handle_event("sign_up", %{"user" => user_params}, socket) do
#     case Accounts.create_user(user_params) do
#       {:ok, user} ->
#         {:noreply, redirect(socket, to: "/user/:id")}

#       {:error, %Ecto.Changeset{} = changeset} ->
#         {:noreply, assign(socket, changeset: changeset)}
#     end
#   end

#   def handle_event("validate", %{"user" => user_params}, socket) do
#     changeset =
#       %Accounts.User{}
#       |> Accounts.change_user(user_params)
#       |> Map.put(:action, :insert)

#     {:noreply, assign(socket, changeset: changeset)}
#   end

#   @impl true
#   def handle_event("delete", %{"id" => id}, socket) do
#     user = Accounts.get_user!(id)
#     {:ok, _} = Accounts.delete_user(user)

#     {:noreply, stream_delete(socket, :users, user)}
#   end
# end
