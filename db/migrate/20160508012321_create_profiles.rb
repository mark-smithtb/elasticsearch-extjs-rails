class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode

      t.timestamps null: false
    end
  end
end
