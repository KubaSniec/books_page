class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.text :description
      t.string :ISBN_number
      t.integer :page_count
      t.integer :year
      t.string :publisher

      t.timestamps null: false
    end
  end
end
