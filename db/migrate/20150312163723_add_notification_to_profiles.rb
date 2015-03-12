class AddNotificationToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :nofication, :boolean
  end
end
