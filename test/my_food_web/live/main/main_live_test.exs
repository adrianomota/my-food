defmodule MyFoodWeb.MainLiveTest do
  use MyFoodWeb.ConnCase
  import Phoenix.LiveViewTest

  test "Load page", %{conn: conn} do
    {:ok, view, html} = live(conn, Routes.main_path(conn, :index))

    assert html =~ "make your order"
    assert render(view) =~ "make your order"

    assert html =~ "right now!"
    assert render(view) =~ "right now!"
  end
end
