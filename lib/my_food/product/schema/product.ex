defmodule MyFood.Product do
  use Ecto.Schema
  import Ecto.Changeset

  @fields ~w/description/a
  @required_fields ~w/name size price/a

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "products" do
    field :name, :string
    field :description
    field :price, :decimal
    field :size, :string

    timestamps()
  end

  def build(params) do
    params
    |> changeset()
  end

  def changeset(attrs \\ %{}) do
    changeset(%__MODULE__{}, attrs)
  end

  def changeset(product, attrs) do
    product
    |> cast(attrs, @fields ++ @required_fields)
    |> validate_required(@required_fields)
    |> unique_constraint(:name, name: :products_name_index)
  end
end
