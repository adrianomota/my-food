defmodule MyFoodPoduct.ProductsTest do
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

  test "given a product with the same name should throw an error message" do
    payload = %{
      name: "product 1",
      description: "product description",
      size: "small",
      price: 10
    }

    assert {:ok, %Product{} = _product} = Products.create_product(payload)
    assert {:error, changeset} = Products.create_product(payload)
    assert "has already been taken" in errors_on(changeset).name
  end
end
