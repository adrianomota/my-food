defmodule MyFoodWeb.Admin.ProductLive do
  use MyFoodWeb, :live_view

  alias MyFood.Products
  alias MyFoodWeb.Admin.Products.FormComponent

  def mount(_params, _session, socket) do
    {:ok, products} = Products.paginate_product(%{"page" => "1", "per_page" => "10"})
    socket = assign(socket, products: products)
    {:ok, socket}
  end
end
