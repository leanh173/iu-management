class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :code
      t.string :level
      t.integer :time
      t.integer :price_peso
      t.integer :price_vnd
      t.integer :rate_price

      t.timestamps
    end
  end
end
