class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.integer :price
      t.string :currency
      t.string :category
      t.boolean :shelf
      t.string :description
      t.date :validate

      t.timestamps
    end
  end
end
