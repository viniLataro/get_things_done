defmodule GetThingsDone.Repo do
  use Ecto.Repo,
    otp_app: :get_things_done,
    adapter: Ecto.Adapters.Postgres
end
