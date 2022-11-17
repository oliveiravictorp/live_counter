defmodule LiveCounter.Repo do
  use Ecto.Repo,
    otp_app: :live_counter,
    adapter: Ecto.Adapters.Postgres
end
