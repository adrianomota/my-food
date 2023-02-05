defmodule MyFoodWeb.Admin.Products.FormComponent do
  use MyFoodWeb, :live_component

  alias MyFood.Product

  def mount(socket) do
    {:ok, socket}
  end

  def update(assigns, socket) do
    changeset = Product.changeset()

    {:ok,
     socket
     |> assign(assigns)
     |> assign(changeset: changeset)}
  end
end
