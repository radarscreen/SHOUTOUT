class RemoveNoficationFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :nofication, :boolean
  end
end
