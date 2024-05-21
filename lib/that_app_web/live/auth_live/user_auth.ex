# defmodule ThatAppWeb.UserAuth do
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

#   def handle_event("save", %{"user" => user_params}, socket) do
#     case Accounts.create_user(user_params) do
#       {:ok, user} ->
#         {:noreply, redirect(socket, to: "/login")}

#       {:error, %Ecto.Changeset{} = changeset} ->
#         {:noreply, assign(socket, changeset: changeset)}
#     end
#   end
# end
