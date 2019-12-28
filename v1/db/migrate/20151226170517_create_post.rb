class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.string :subtitle
      t.string :tag_string
      t.string :body, null: false

      t.timestamps null: false
    end
  end
end
