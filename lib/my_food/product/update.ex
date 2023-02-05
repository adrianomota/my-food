defmodule MyFood.Product.Update do
  alias Ecto.UUID
  alias MyFood.Product
  alias MyFood.Repo

  def call(%{"id" => id} = params) do
    case UUID.cast(id) do
      :error -> {:error, "Invalid Id format!"}
      {:ok, _id} -> update(params)
    end
  end

  defp update(%{"id" => id} = params) do
    case fetch_product(id) do
      nil -> {:not_found, "Product doesn't exists"}
      product -> update_product(product, params)
    end
  end

  defp update_product(product, params) do
    product
    |> Product.changeset(params)
    |> Repo.update()
  end

  defp fetch_product(id), do: Repo.get(Product, id)
end
