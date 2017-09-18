class Api::VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.page params[:page]
      render json:@vehicles,each_serializer: VehicleSerializer,meta:pagination(@vehicles),adapter: :json

  end
end
