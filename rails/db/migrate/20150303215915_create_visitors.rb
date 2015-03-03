class CreateVisitors < ActiveRecord::Migration
  def change
    create_table :visitors do |t|
      t.string :ip_address
      t.text :params
      t.decimal :longitude
      t.decimal :latitude
      t.timestamps null: false
    end
  end
end
