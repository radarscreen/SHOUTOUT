class CreateShouts < ActiveRecord::Migration
  def change
    create_table :shouts do |t|
      t.string :title
      t.datetime :time
      t.string :location
      t.text :description
      t.integer :profile_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
