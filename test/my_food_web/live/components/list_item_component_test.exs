defmodule MyFoodWeb.ListItemComponentTest do
  use MyFoodWeb.ConnCase
  import Phoenix.LiveViewTest

  test "Load items component", %{conn: conn} do
    {:ok, view, _html} = live(conn, Routes.main_path(conn, :index))

    assert has_element?(view, "#listitem-component")
    assert has_element?(view, "[data-role=items-info][data-id=all-foods]")
  end
end
