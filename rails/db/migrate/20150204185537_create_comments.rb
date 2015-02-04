class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.string :body, null: false
      t.integer :post_id, null: false, index: true
      t.timestamps
    end
  end
end
