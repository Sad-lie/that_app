# # lib/my_app_web/live/user_login_live.ex
# defmodule ThatAppWeb.UserLogin do
#   use ThatAppWeb, :live_view

#   alias ThatApp.Accounts

#   def mount(_params, _session, socket) do
#     {:ok, assign(socket, changeset: Accounts.change_user(%Accounts.User{}))}
#   end

#   def handle_event("validate", %{"user" => user_params}, socket) do
#     changeset =
#       %Accounts.User{}
#       |> Accounts.change_user(user_params)
#       |> Map.put(:action, :insert)

#     {:noreply, assign(socket, changeset: changeset)}
#   end

#   def handle_event("login", %{"user" => user_params}, socket) do
#     IO.inpsect(user_params)
#     {email , hash_password} = [user_params["email"] ,user_params["password"]]
#     case Auth.Guardian.authenticate_user(email,hash_password) do
#       {:ok, user} ->
#         # Handle successful login
#         {:noreply, socket}

#       {:error, reason} ->
#         # Handle failed login
#         {:noreply, assign(socket, error: reason)}
#     end
#   end
# end
