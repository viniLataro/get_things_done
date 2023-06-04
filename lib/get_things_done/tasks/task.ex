defmodule GetThingsDone.Tasks.Task do
  @moduledoc false

  use Ecto.Schema
  import Ecto.Changeset

  alias GetThingsDone.Accounts.User
  alias GetThingsDone.Lists.List

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "tasks" do
    field :description, :string
    field :status, Ecto.Enum, values: [:started, :completed], default: :started
    field :position, :integer

    belongs_to :user, User
    belongs_to :list, List

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:description, :status, :position, :list_id, :user_id])
    |> validate_required([:description, :status, :position, :list_id, :user_id])
  end
end
