defmodule GetThingsDone.Lists.List do
  use Ecto.Schema
  import Ecto.Changeset

  alias GetThingsDone.Accounts.User

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "lists" do
    field :title, :string

    belongs_to :user, User

    timestamps()
  end

  @doc false
  def changeset(list, attrs) do
    list
    |> cast(attrs, [:title, :user_id])
    |> validate_required([:title, :user_id])
  end
end
