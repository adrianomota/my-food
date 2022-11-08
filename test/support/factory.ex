defmodule MyFood.Factory do
  use ExMachina.Ecto, repo: MyFood.Repo

  alias MyFood.Products.Product

  def product_factory do
    %Product{
      name: Faker.Food.dish(),
      description: Faker.Food.description(),
      price: 200,
      size: "small"
    }
  end
end
