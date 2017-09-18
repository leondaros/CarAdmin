class AddAttachmentAvatarToVehicleModels < ActiveRecord::Migration
  def self.up
    change_table :vehicle_models do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :vehicle_models, :avatar
  end
end
