defmodule MyFoodWeb.HeroComponent do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
       <section class="hero py-16" id={@id}>
        <div class="container mx-auto flex items-center justify-between">
          <div id="hero-info" class="w-1/2" data-role="hero-info"> 
             <h6 id="hero-info-text" data-id="recomendation" class="text-lg">
              <em class="text-gray-500 font-bold">make your order</em>
             </h6>
             <h1 class="text-3xl md:text-6xl font-bold text-gray-500" data-id="cta" >right now!</h1>
             <button class="px-6 py-2 rounded-full text-white font-bold mt-5 bg-orange-500 hover:bg-orange-400 transition duration-500" data-id="cta-button">order now</button>
          </div>
          <div id="hero-info-image" class="w-1/2">
            <img src={@hero_image_url} alt="hero image" />
          </div>
        </div>
      </section>
    """
  end
end
