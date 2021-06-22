defmodule Distillator.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Distillator.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Distillator.PubSub}
      # Start a worker by calling: Distillator.Worker.start_link(arg)
      # {Distillator.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Distillator.Supervisor)
  end
end
