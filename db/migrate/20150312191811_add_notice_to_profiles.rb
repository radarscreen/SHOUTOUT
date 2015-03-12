class AddNoticeToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :notification, :boolean
  end
end
