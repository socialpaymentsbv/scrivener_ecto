defmodule :"Elixir.Scrivener.Ecto.Repo.Migrations.4AddAuthors" do
  use Ecto.Migration

  def change do
    create table(:authors) do
      add :name, :string

      timestamps
    end

    alter table(:comments) do
      add :author_id, references(:authors)
    end
  end
end
