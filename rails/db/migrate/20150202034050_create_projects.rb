class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.string :app_url, null: false
      t.string :repo_url, null: false
      t.text :description, null: false
    end
  end
end
