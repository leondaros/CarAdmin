include ActiveModel::Serialization
class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :plate, :year, :color, :vehicle_model_id
end
