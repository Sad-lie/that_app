defmodule ThatApp.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ThatApp.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        email: "some email",
        hash_password: "some hash_password",
        name: "some name"
      })
      |> ThatApp.Accounts.create_user()

    user
  end
end
