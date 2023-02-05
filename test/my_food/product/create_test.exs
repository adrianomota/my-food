defmodule MyFood.Product.CreateTest do
  use MyFood.DataCase

  import MyFood.Factory

  alias MyFood.Products

  describe "call/1" do
    test "Whem all params are valid, create product" do
      product = build(:map_product)
      assert {:ok, _product} = Products.create_product(product)
    end

    test "When there is some invalid data, returns the error" do
      product = build(:map_product, %{name: ""})

      assert {:error, changeset} = Products.create_product(product)
      assert "can't be blank" in errors_on(changeset).name
    end

    test "When already exists the product registered with the same name, returns the error" do
      insert(:product, %{name: "Product one"})
      same_product = build(:map_product, %{name: "Product one"})

      assert {:error, changeset} = Products.create_product(same_product)
      assert "has already been taken" in errors_on(changeset).name
    end
  end
end
