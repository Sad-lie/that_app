defmodule ThatAppWeb.Auth.Guardian do
  use Guardian, otp_app: :that_app
  alias ThatApp.Accounts

  def subject_for_token(%{id: id}, _claims) do
    sub = to_string(id)
    {:ok, sub}
  end
  def subject_for_token(_,_) do
    {:error,:no_id_provided}
  end
  def resource_from_claims(%{"sub" => id}) do
    case Accounts.get_user!(id) do
      nil -> {:error,:not_found}
      resource -> {:ok, resource}
    end
  end
  def resource_from_claims(_claims) do
    {:error, :no_id_provided}
  end
  def authenticate((%{"name" => _name ,"email" => email, "hash_password" => password,})) do
    authenticate(email,password)
  end
  def authenticate(email,password) do
    case Accounts.get_user_by_email(email) do
      nil -> {:error ,:unauthored}
      account ->
        case validate_password(password,account.hash_password) do
          true ->  {:ok, account}

          false -> {:error,:unauthored}
        end
    end
  end
  defp validate_password(password,hash_password)do
    Bcrypt.verify_pass(password,hash_password)
  end
  # def create_token(account, claim ) do

  #   {:ok ,token, claim } = encode_and_sign(account)
  #   {:ok,account,token}
  # end
  def create_token(account, claims \\ %{}) do
    claims = Map.merge(claims, %{
      exp: DateTime.utc_now() |> DateTime.add(3600, :second) |> DateTime.to_unix(),
      # Add other claims here
    })

    case encode_and_sign(account,claims) do
      {:ok, token, _claims} ->
        {:ok, token}
      {:error, reason} ->
        {:error, reason}
    end
  end

  def decode_token(token) do
    case decode_and_verify(token) do
      {:ok, claims} ->
        {:ok, claims}
      {:error, reason} ->
        {:error, reason}
    end
  end
end
