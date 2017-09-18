class Api::VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.page params[:page]
      render json:{meta: {
        current_page: @vehicles.current_page,
        next_page: @vehicles.next_page,
        prev_page: @vehicles.prev_page,
        total_pages: @vehicles.total_pages,
        total_count: @vehicles.total_count
      },products: @vehicles}
  end
end
