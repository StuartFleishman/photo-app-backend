class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :image_url
      t.integer :category_id
      t.integer :user_id
      t.timestamps
    end
  end
end
