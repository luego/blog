class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :user, index: true
      t.references :category, index: true
      t.string :tag_list

      t.timestamps
    end
  end
end