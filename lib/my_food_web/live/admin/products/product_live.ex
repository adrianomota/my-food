defmodule MyFoodWeb.Admin.ProductLive do
  use MyFoodWeb, :live_view

  alias MyFood.Products

  def mount(_params, _session, socket) do
    socket = assign(socket, products: Products.list_products())
    {:ok, socket}
  end
end
