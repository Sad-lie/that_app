defmodule ThatAppWeb.AuthLive.FormComponent do
  use ThatAppWeb, :live_component


  alias ThatApp.Accounts
  alias ThatApp.Accounts.User
  alias ThatAppWeb.Auth.Guardian

  @impl true
  def render(assigns) do
    ~H"""
    <div>
      <.header>
        <%= @title %>
        <:subtitle>Use This Form</:subtitle>
      </.header>

      <.simple_form
        for={@form}
        id="login-form"
        phx-target={@myself}
        phx-change="validate"
        phx-submit="save"
      >
        <.input field={@form[:name]} type="text" label="Name" />
        <.input field={@form[:email]} type="text" label="Email" />
        <.input field={@form[:hash_password]} type="password" label="Password" />
        <:actions>
          <.button phx-disable-with="Saving...">Save User</.button>
        </:actions>
      </.simple_form>
    </div>
    """
  end

  @impl true
  def update(assigns, socket) do
    user = assigns[:user] || %User{}
    changeset = Accounts.change_user(user)
    {:ok, assign(socket, assigns) |> assign_form(changeset)}
  end



  @impl true
  def handle_event("validate", %{"user" => user_params}, socket) do
    changeset =
      socket.assigns.user
      |> Accounts.change_user(user_params)
      |> Map.put(:action, :validate)

    {:noreply, assign_form(socket, changeset)}
  end

  @impl true
  def handle_event("save", %{"user" => user_params}, socket) do
    save_user(socket, socket.assigns.action, user_params)
  end

  # defp save_user(socket, :edit_user, user_params) do
  #   case Accounts.update_user(socket.assigns.user, user_params) do
  #     {:ok, user} ->
  #       notify_parent({:saved, user})

  #       {:noreply,
  #        socket
  #        |> put_flash(:info, "User updated successfully")
  #       # |> push_patch(to: socket.assigns.patch)}
  #       |> push_redirect(to: "/posts")}


  #     {:error, %Ecto.Changeset{} = changeset} ->
  #       {:noreply, assign_form(socket, changeset)}
  #   end
  # end

  defp save_user(socket, :log_in, user_params) do
    case Guardian.authenticate(user_params["email"], user_params["hash_password"]) do
      {:ok, user} ->
        case Guardian.create_token(user) do
          {:ok, token} ->
            notify_parent({:saved, user})
            {:noreply,
             socket
             |> put_flash(:info, "User logged in successfully")
             |> assign(:token, token)
             #|> push_patch(to: socket.assigns.patch)
             |> push_redirect(to: "/posts")}

          {:error, reason} ->
            IO.puts("Failed to create token: #{inspect(reason)}")
            {:noreply,
             socket
             |> put_flash(:error, "Failed to log in. Please try again.")
             |> assign(:token, nil)}

          unexpected ->
            IO.puts("Unexpected return value from create_token: #{inspect(unexpected)}")
            {:noreply,
             socket
             |> put_flash(:error, "An unexpected error occurred. Please try again.")
             |> assign(:token, nil)}
        end

      {:error, :unauthorized} ->
        changeset = Ecto.Changeset.add_error(
          Ecto.Changeset.change(%{}),
          :base,
          "Invalid login credentials"
        )
        {:noreply, assign_form(socket, changeset)}

      unexpected ->
        IO.puts("Unexpected return value from authenticate: #{inspect(unexpected)}")
        changeset = Ecto.Changeset.add_error(
          Ecto.Changeset.change(%{}),
          :base,
          "An unexpected error occurred"
        )
        {:noreply, assign_form(socket, changeset)}
    end
  end


  # defp save_user(socket, :log_in, user_params) do
  #   case Guardian.authenticate(user_params) do
  #     {:ok, user} ->
  #       {:ok, token} = Guardian.create_token(user)
  #       notify_parent({:saved, user})


  #       {:noreply,
  #        socket
  #        |> put_flash(:info, "User logged in successfully")
  #        |> assign(:token, token)
  #        |> push_patch(to: socket.assigns.patch)}
  #        |> push_redirect(to: "/posts")

  #     {:error, changeset} ->
  #       {:noreply, assign_form(socket, changeset)}
  #   end
  # end

  defp save_user(socket, :sign_up, user_params) do
    case Accounts.create_user(user_params) do
      {:ok, user} ->
        notify_parent({:saved, user})

        {:noreply,
         socket
         |> put_flash(:info, "User created successfully")
        # |> push_patch(to: socket.assigns.patch)}
         |> push_redirect(to: "/posts")}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign_form(socket, changeset)}
    end
  end

  defp assign_form(socket, %Ecto.Changeset{} = changeset) do
    assign(socket, :form, to_form(changeset))
  end

  defp assign_form(socket, changeset) do
    IO.inspect(changeset)
    assign(socket, :form, nil)
  end



  defp notify_parent(msg), do: send(self(), {__MODULE__, msg})
end

# defmodule ThatAppWeb.AuthLive.FormComponent do
#   use ThatAppWeb, :live_component

#   alias ThatApp.Accounts
#   #alias ThatApp.Account.Users
#   alias ThatAppWeb.Auth.Guardian

#   @impl true
#   def render(assigns) do
#     ~H"""
#     <div>
#       <.header>
#         <%= @title %>
#         <:subtitle>Use This Form</:subtitle>
#       </.header>

#       <.simple_form
#         for={@form}
#         id="login-form"
#         phx-target={@myself}
#         phx-change="validate"
#         phx-submit="save"
#       >
#         <.input field={@form[:name]} type="text" label="Name" />
#         <.input field={@form[:email]} type="text" label="Email" />
#         <.input field={@form[:hash_password]} type="password" label="Password" />
#         <:actions>
#           <.button phx-disable-with="Saving...">Save User</.button>
#         </:actions>
#       </.simple_form>
#     </div>
#     """
#   end

  # @impl true
  # def mount(socket) do
  #   changeset = Accounts.change_user(%{})
  #   {:ok, assign(socket, form: to_form(changeset))}
  # end

  #@impl true
  # def mount(socket) do
  #   changeset = Accounts.change_user(%{})
  #   {:ok, assign(socket, form: to_form(changeset))}
  # end


  # def mount(params, _session, socket) do
  #   changeset = ThatApp.Accounts.change_user(%ThatApp.Accounts.User{}, params)
  #   {:ok, assign(socket, changeset: changeset)}
  # end
  # def mount(_params, _session, socket) do
  #   {:ok, assign(socket, [ page: :login,
  #                        changeset: ThatApp.Accounts.change_user(%ThatApp.Accounts.User{}),
  #                        login_form: to_form(%{})])}
  # end


  # @impl true
  # def update(assigns, socket) do
  #   user = assigns[:user] || %User{}
  #   changeset = Accounts.change_user(user)
  #   {:ok, assign(socket, assigns) |> assign_form(changeset)}
  # end
#   @impl true
# def update(assigns, socket) do
#   user = assigns[:user] || %ThatApp.Accounts.User{}
#   changeset = Accounts.change_user(user)
#   {:ok, assign(socket, assigns) |> assign_form(changeset)}
# end


  # @impl true
  # def handle_event("validate", %{"user" => user_params}, socket) do
  #   changeset =
  #     socket.assigns.user
  #     |> Accounts.change_user(user_params)
  #     |> Map.put(:action, :validate)

  #   {:noreply, assign_form(socket, changeset)}
  # end

  # @impl true
  # def handle_event("save", %{"user" => user_params}, socket) do
  #   save_user(socket, socket.assigns.action, user_params)
  # end

  # defp save_user(socket, :edit_user, user_params) do
  #   IO.inspect(user_params, label: "User Params")
  #   IO.inspect(socket.assigns, label: "Socket Assigns")
  #   case Accounts.update_user(socket.assigns.user, user_params) do
  #     {:ok, user} ->
  #       notify_parent({:saved, user})

  #       {:noreply,
  #        socket
  #        |> put_flash(:info, "User updated successfully")
  #        |> push_patch(to: socket.assigns.patch)}

  #     {:error, %Ecto.Changeset{} = changeset } ->
  #       {:noreply, assign_form(socket, changeset)}
  #   end
  # end

#   defp save_user(socket, :log_in, user_params) do
#     case Guardian.authenticate(user_params) do
#       {:ok, user} ->
#         {:ok , token} = Guardian.create_token(user)
#         notify_parent({:saved, user})

#         {:noreply,
#          socket
#          |> put_flash(:info, "User logged in successfully")
#          |> assign(:token , token)
#          |> push_patch(to: socket.assigns.patch)}

#       {:error, changeset} ->
#         {:noreply, assign_form(socket, changeset)}
#     end
#   end

#   defp save_user(socket, :sign_up, user_params) do
#     case Accounts.create_user(user_params) do
#       {:ok, user} ->
#         notify_parent({:saved, user})

#         {:noreply,
#          socket
#          |> put_flash(:info, "User created successfully")
#          |> push_patch(to: socket.assigns.patch)}

#       {:error, %Ecto.Changeset{} = changeset} ->
#         {:noreply, assign_form(socket, changeset)}
#     end
#   end

#   defp assign_form(socket, %Ecto.Changeset{} = changeset) do
#     assign(socket, :form, to_form(changeset))
#   end

#   defp notify_parent(msg), do: send(self(), {__MODULE__, msg})
# end

# defmodule ThatAppWeb.AuthLive.FormComponent do
#   use ThatAppWeb, :live_component

#   alias ThatApp.Accounts
#   alias ThatAppWeb.Auth.Guardian

#   @impl true
#   # def render(assigns) do
#   #   ~H"""
#   #   <div>
#   #     <h2><%= @title %></h2>
#   #     <.input field={@form[:name]} type="text" label="Name" />
#   # #       <.input field={@form[:email]} type="text" label="Email" />
#   #        <.input field={@form[:hash_password]} type="text" label="Password" />
#   #        <:actions>
#   #          <.button phx-disable-with="Saving...">Save User</.button>
#   #        </:actions>
#   #     </.form>
#   #   </div>
#   #   """
#   # end

#   def render(assigns) do
#     ~H"""
#     <div>
#       <.header>
#         <%= @title %>
#         <:subtitle>Use This Form</:subtitle>
#       </.header>

#       <.simple_form
#         for={@form}
#         id="-form"
#         phx-target={@myself}
#         phx-change="validate"
#         phx-submit="save"
#       >
#         <.input field={@form[:name]} type="text" label="Name" />
#         <.input field={@form[:email]} type="text" label="Email" />
#         <.input field={@form[:hash_password]} type="text" label="Password" />
#         <:actions>
#           <.button phx-disable-with="Saving...">Save User</.button>
#         </:actions>
#       </.simple_form>
#     </div>
#     """
#   end


#     # def mount(socket) do
#     #   changeset = Accounts.change_user(%User{})
#     #   {:ok, assign(socket, changeset: changeset)}
#     # end


#     @impl true
#     # def update(%{user: user} = assigns, socket) do
#     #   changeset = Accounts.change_user(user)

#     #   {:ok,
#     #    socket
#     #    |> assign(assigns)
#     #    |> assign_form(changeset)}
#     # end
#     def update(assigns, socket) do
#       socket = assign(socket, assigns)
#       {:ok, socket}
#     end
#     def update(assigns, socket) do
#       form = assigns[:form] || %{} # Ensure form is assigned correctly
#       {:ok, assign(socket, form: form)}
#     end

#     def handle_event("save", %{"user" => user_params}, socket) do
#         IO.inspect(socket)
#         IO.inspect(user_params)
#       case Auth.Guardian.authenticate(user_params) do
#         {:ok, user} ->
#           # Handle successful authentication, maybe redirect or assign user session
#           {:noreply, socket}
#         {:error, changeset} ->
#           {:noreply, assign(socket, changeset: changeset)}
#       end
#     end

#   @impl true
#   def handle_event("validate", %{"user" => user_params}, socket) do
#     changeset =
#       socket.assigns.user
#       |> Accounts.change_user(user_params)
#       |> Map.put(:action, :validate)

#     {:noreply, assign_form(socket, changeset)}
#   end

#   def handle_event("save", %{"user" => user_params}, socket) do
#     save_post(socket, socket.assigns.action, user_params)
#   end

#   defp save_post(socket, :edit_user, user_params) do
#     case Accounts.update_user(socket.assigns.user, user_params) do
#       {:ok, user} ->
#         notify_parent({:saved, user})

#         {:noreply,
#          socket
#          |> put_flash(:info, "User updated successfully")
#          |> push_patch(to: socket.assigns.patch)}

#       {:error, %Ecto.Changeset{} = changeset} ->
#         {:noreply, assign_form(socket, changeset)}
#     end
#   end

#   defp save_user(socket, :log_in, user_params) do
#     case Accounts.update_user(socket.assigns.user, user_params) do
#       {:ok, user} ->
#         notify_parent({:saved, user})

#         {:noreply,
#          socket
#          |> put_flash(:info, "User updated successfully")
#          |> push_patch(to: socket.assigns.patch)}

#       {:error, %Ecto.Changeset{} = changeset} ->
#         {:noreply, assign_form(socket, changeset)}
#     end
#   end


#   defp save_post(socket, :sign_up, user_params) do
#     case Accounts.create_user(user_params) do
#       {:ok, post} ->
#         notify_parent({:saved, post})

#         {:noreply,
#          socket
#          |> put_flash(:info, "Post created successfully")
#          |> push_patch(to: socket.assigns.patch)}

#       {:error, %Ecto.Changeset{} = changeset} ->
#         {:noreply, assign_form(socket, changeset)}
#     end
#   end

#   defp assign_form(socket, %Ecto.Changeset{} = changeset) do
#     assign(socket, :form, to_form(changeset))
#   end

#   defp notify_parent(msg), do: send(self(), {__MODULE__, msg})
# end
