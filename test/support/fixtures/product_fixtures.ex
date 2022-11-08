defmodule MyFood.ProductFixtures do
  alias MyFood.Products

  def product_fixture(attrs \\ %{}) do
    {:ok, product} =
      attrs
      |> Enum.into(%{
        name: Faker.Food.dish(),
        description: Faker.Food.description(),
        price: 200,
        size: "small"
      })
      |> Products.create_product()

    product
  end
end
