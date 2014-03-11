class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.decimal :price
      t.integer :category
      t.integer :status
      t.string :name
      t.text :description
      t.string :sub_section
      t.string :img_url

      t.timestamps
    end
  end
end
