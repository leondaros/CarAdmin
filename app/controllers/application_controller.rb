class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def pagination(paginated_array)
  { pagination: { current_page: paginated_array.current_page,
                  next_page: paginated_array.next_page,
                  prev_page: paginated_array.prev_page,
                  total_pages: paginated_array.total_pages,
                  total_count: paginated_array.total_count} }
  end

end
