defmodule MyFoodWeb.PageLiveTest do
  use MyFoodWeb.ConnCase

  import Phoenix.LiveViewTest

  test "disconnected and connected render", %{conn: conn} do
    {:ok, page_live, disconnected_html} = live(conn, "/")
    assert disconnected_html =~ "Welcome to MyFood!"
    assert render(page_live) =~ "Welcome to MyFood!"
  end
end
