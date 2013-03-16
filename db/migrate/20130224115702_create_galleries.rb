class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title
      t.string :url
      t.text :body

      t.timestamps
    end
  end
end
