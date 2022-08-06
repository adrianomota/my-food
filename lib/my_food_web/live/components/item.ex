defmodule MyFoodWeb.ItemComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
       <div class="shadow flex flex-col items-center justify-center border-2 border-gray-100 rounded-lg w-100 h-100 font-bold m-2 p-2 hover:shadow-lg hover:shadow-orange-200 transition duration-500">
        <figure>
          <img src={@food_image_url} class="my-4"/> 
        </figure>  
        <h3>Produto com nome</h3>
        <span class="my-5 badge badge-primary badge-outline">Small</span>  
        <div class="flex items-center justify-around w-full">
          <span class="badge badge-accent badge-outline text-lg" >$ 10</span>
          <button class="flex items-center justify-center text-white font-bold py-1 px-4 rounded-full bg-orange-500 hover:bg-orange-400 transition duration-500">
            <span>+</span>
            <span class="ml-2">add</span>
          </button>
        </div>
       </div>
    """
  end
end
