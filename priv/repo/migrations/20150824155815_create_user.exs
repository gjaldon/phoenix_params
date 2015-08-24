defmodule PhoenixParams.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :username, :string

      timestamps
    end

    unique_index(:users, [:username])
  end
end