class AddCityToShouts < ActiveRecord::Migration
  def change
    add_column :shouts, :city, :string
  end
end
