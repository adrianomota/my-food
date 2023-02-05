defmodule MyFood.Product.Paginate do
  alias MyFood.{Pagination, Product}

  def call(params), do: {:ok, Pagination.page(Product, params)}
end
