defmodule MyFood.Products do
  alias MyFood.Product.{Create, Delete, Paginate, Update}

  defdelegate create_product(params), to: Create, as: :call
  defdelegate paginate_product(params), to: Paginate, as: :call
  defdelegate update_product(params), to: Update, as: :call
  defdelegate delete_product(id), to: Delete, as: :call
end
