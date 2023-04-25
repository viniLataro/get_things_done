defmodule GetThingsDone.Factory do
  @moduledoc """
  Module used to define factories used by tests
  Factories are an easy way seed data and build complex scenarios when writing tests
  More info: https://github.com/thoughtbot/ex_machina
  """

  use ExMachina.Ecto, repo: GetThingsDone.Repo
end
