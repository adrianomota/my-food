defmodule MyFood.Factory do
  use ExMachina.Ecto, repo: MyFood.Repo

  def map_product_factory do
    %{
      name: Faker.Food.dish(),
      description: Faker.Food.description(),
      price: 200,
      size: "small"
    }
  end

  def product_factory do
    %MyFood.Product{
      name: Faker.Food.dish(),
      description: Faker.Food.description(),
      price: 200,
      size: "small"
    }
  end
end
