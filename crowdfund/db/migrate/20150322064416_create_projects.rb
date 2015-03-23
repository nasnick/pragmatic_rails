class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.integer :total_pledge_amount

      t.timestamps null: false
    end
  end
end
