class RemovePhoneNumberFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :phone_number, :integer
  end
end
