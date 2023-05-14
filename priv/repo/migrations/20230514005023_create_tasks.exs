defmodule GetThingsDone.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :description, :string
      add :done, :boolean, default: false, null: false

      add :list_id, references(:lists, on_delete: :delete_all, type: :binary_id), null: false

      timestamps()
    end
  end
end
