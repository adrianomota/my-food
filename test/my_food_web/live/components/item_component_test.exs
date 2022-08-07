defmodule MyFoodWeb.ItemComponentTest do
  use MyFoodWeb.ConnCase
  import Phoenix.LiveViewTest

  test "Load items component", %{conn: conn} do
    {:ok, view, _html} = live(conn, Routes.main_path(conn, :index))

    assert has_element?(view, "#item-1")
    assert has_element?(view, "#add")
    assert has_element?(view, "[data-role=product-img][data-id=item-1]")
    assert has_element?(view, "[data-role=product-description]")
    assert has_element?(view, "[data-role=product-price]")
    assert has_element?(view, "[data-role=plus-text]")
    assert has_element?(view, "[data-role=add-text]")
  end
end
