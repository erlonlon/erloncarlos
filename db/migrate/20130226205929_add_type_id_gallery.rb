class AddTypeIdGallery < ActiveRecord::Migration
  def up

     add_column :galleries, :type_id, :integer
  end

  def down
  	remove_column :galleries, :type_id
  end
end
