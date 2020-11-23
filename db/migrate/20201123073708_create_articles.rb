class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :tag, null: true
      t.string :content, null: false

      t.timestamps
    end
  end
end
