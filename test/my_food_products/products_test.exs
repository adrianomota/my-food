defmodule MyFoodPoducts.ProductsTest do
  use MyFood.DataCase

  alias MyFood.Products
  alias MyFood.Products.Product

  test "list_products/0" do
    assert Products.list_products() == []
  end

  test "create_product/1" do
    payload = %{
      name: "product 1",
      description: "product description",
      size: "small",
      price: 10
    }

    assert {:ok, %Product{} = product} = Products.create_product(payload)

    assert product.name == payload.name
    assert product.description == payload.description
    assert product.size == payload.size
  end
end
