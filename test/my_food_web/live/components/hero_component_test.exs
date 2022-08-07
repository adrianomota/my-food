defmodule MyFoodWeb.HeroComponentTest do
  use MyFoodWeb.ConnCase
  import Phoenix.LiveViewTest

  test "Load hero component", %{conn: conn} do
    {:ok, view, _html} = live(conn, Routes.main_path(conn, :index))

    assert has_element?(view, "#hero-component")
    assert has_element?(view, "[data-role=hero-info]", "make your order")
    assert has_element?(view, "[data-id=recomendation]", "make your order")

    assert(has_element?(view, "[data-id=cta]", "right now!"))
    assert(has_element?(view, "[data-id=cta-button]", "order now"))
  end
end
