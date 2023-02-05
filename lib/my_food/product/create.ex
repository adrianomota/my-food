defmodule MyFood.Product.Create do
  alias MyFood.Product
  alias MyFood.Repo

  def call(params) do
    params
    |> Product.build()
    |> create_product()
  end

  defp create_product(%Ecto.Changeset{valid?: true} = product), do: Repo.insert(product)
  defp create_product(%Ecto.Changeset{valid?: false} = changeset), do: {:error, changeset}
end
