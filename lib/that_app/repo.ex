defmodule ThatApp.Repo do
  use Ecto.Repo,
    otp_app: :that_app,
    adapter: Ecto.Adapters.Postgres
end
