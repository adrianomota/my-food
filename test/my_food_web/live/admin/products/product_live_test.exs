defmodule MyFoodWeb.Admin.ProductLiveTest do
  use MyFoodWeb.ConnCase
  import Phoenix.LiveViewTest

  test "Load page", %{conn: conn} do
    {:ok, view, _html} = live(conn, Routes.admin_product_path(conn, :index))
    assert has_element?(view, "[data-role=product-section]")
    assert has_element?(view, "[data-role=product-table]")
    assert has_element?(view, "[data-role=product-list]")

    assert has_element?(view, "[data-id=head-name]", "Name")
    assert has_element?(view, "[data-id=head-price]", "Price")
    assert has_element?(view, "[data-id=head-size]", "Size")
    assert has_element?(view, "[data-id=head-actions]", "Actions")
  end
end
