defmodule Distillator.Repo do
  use Ecto.Repo,
    otp_app: :distillator,
    adapter: Ecto.Adapters.Postgres
end
