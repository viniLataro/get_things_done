defmodule GetThingsDone.Lists.List do
  use Ecto.Schema
  import Ecto.Changeset

  alias GetThingsDone.Accounts.User
  alias GetThingsDone.Tasks.Task

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "lists" do
    field :title, :string

    belongs_to :user, User
    has_many :tasks, Task

    timestamps()
  end

  @doc false
  def changeset(list, attrs) do
    list
    |> cast(attrs, [:title, :user_id])
    |> validate_required([:title, :user_id])
  end
end
