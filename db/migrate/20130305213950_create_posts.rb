class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :subtitle
      t.datetime :published
      t.string :url
      t.boolean :ativo
      t.text :body

      t.timestamps
    end
  end
end
