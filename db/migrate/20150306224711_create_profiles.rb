class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :email
      t.string :password
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
