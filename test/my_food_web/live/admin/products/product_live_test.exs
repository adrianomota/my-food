defmodule MyFoodWeb.Admin.ProductLiveTest do
  use MyFoodWeb.ConnCase
  import Phoenix.LiveViewTest
  import MyFood.Factory

  test "Load page", %{conn: conn} do
    product = insert(:product)

    {:ok, view, _html} = live(conn, Routes.admin_product_path(conn, :index))

    assert has_element?(view, "[data-role=product-section]")
    assert has_element?(view, "[data-role=product-table]")
    assert has_element?(view, "[data-role=product-list]")

    assert has_element?(view, "[data-id=head-name]", "Name")
    assert has_element?(view, "[data-id=head-price]", "Price")
    assert has_element?(view, "[data-id=head-size]", "Size")
    assert has_element?(view, "[data-id=head-actions]", "Actions")

    assert has_element?(view, "[data-role=product-item][data-id=#{product.id}]")
    assert has_element?(view, "[data-role=product-name][data-id=#{product.id}]", product.name)

    assert has_element?(
             view,
             "[data-role=product-price][data-id=#{product.id}]",
             "$ #{product.price}"
           )

    assert has_element?(view, "[data-role=product-size][data-id=#{product.id}]", product.size)

    assert has_element?(view, "[data-role=product-action][data-id=#{product.id}]", "new")
    assert has_element?(view, "[data-role=product-action][data-id=#{product.id}]", "details")
    assert has_element?(view, "[data-role=product-action][data-id=#{product.id}]", "remove")
  end
end
