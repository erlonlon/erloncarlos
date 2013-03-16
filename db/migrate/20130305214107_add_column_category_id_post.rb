class AddColumnCategoryIdPost < ActiveRecord::Migration
  def change
  	add_column :posts, :category_id, :integer
  end
end
