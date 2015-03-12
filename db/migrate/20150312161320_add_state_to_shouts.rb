class AddStateToShouts < ActiveRecord::Migration
  def change
    add_column :shouts, :state, :string
  end
end
