defmodule MyFood.Products do
  alias MyFood.Products.Product
  alias MyFood.Repo

  def list_products, do: Repo.all(Product)

  def create_product(attrs \\ %{}) do
    attrs
    |> Product.changeset()
    |> Repo.insert()
  end
end
