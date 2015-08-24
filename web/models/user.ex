defmodule PhoenixParams.User do
  use PhoenixParams.Web, :model
  @derive {Phoenix.Param, key: :username}

  schema "users" do
    field :username, :string

    timestamps
  end

  @required_fields ~w(username)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
