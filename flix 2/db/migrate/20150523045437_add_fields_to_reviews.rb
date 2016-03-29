class AddFieldsToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :location, :text
  end
end
