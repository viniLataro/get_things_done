defmodule GetThingsDone.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  alias GetThingsDone.Lists.List

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "tasks" do
    field :description, :string
    field :done, :boolean, default: false

    belongs_to :list, List

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:description, :done, :list_id])
    |> validate_required([:description, :done, :list_id])
  end
end
