defmodule MyFoodWeb.ListItemsComponent do
  use Phoenix.LiveComponent

  alias MyFoodWeb.ItemComponent

  def render(assigns) do
    ~H"""
      <section class="menu container mx-auto py-8" id={@id}>
        <h1 class="text-xl font-bold mb-8" data-role="items-info" data-id="all-foods">All foods</h1>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 col-gap-12 row-gap-16">
          <%= for i <-1..10  do %>
            <.live_component module={ItemComponent} id={"item-#{Integer.to_string(i)}"} food_image_url={@food_image_url}  />
          <% end %>
        </div>
      </section>
    """
  end
end
