defmodule ThatApp.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "users" do
    field :name, :string
    field :email, :string
    field :hash_password, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(user,attrs) do
    user
    |> cast(attrs, [:name, :email, :hash_password])
    |> validate_required([:name, :email, :hash_password])
    |> validate_format(:email, ~r/^[^\s]+@[^\s]+$/,message: "must have a @ and no space")
    |> validate_length(:email,max: 160)
    |> unique_constraint(:email)
    |> put_password_hash()
  end
  defp put_password_hash(%Ecto.Changeset{valid?: true,changes: %{hash_password: hash_password}} = changeset)
    do
      change(changeset,hash_password: Bcrypt.hash_pwd_salt(hash_password))
  end
  defp put_password_hash(changeset),do: changeset
end
