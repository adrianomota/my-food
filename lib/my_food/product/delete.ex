defmodule MyFood.Product.Delete do
  alias Ecto.UUID
  alias MyFood.{Product, Repo}

  def call(id) do
    case UUID.cast(id) do
      :error -> {:error, "Invalid Id format@"}
      {:ok, uuid} -> delete(uuid)
    end
  end

  defp delete(uuid) do
    case fetch_product(uuid) do
      nil -> {:error, "Product doesn't exists"}
      product -> {:ok, Repo.delete(Product, product)}
    end
  end

  defp fetch_product(uuid), do: Repo.get(Product, uuid)
end
