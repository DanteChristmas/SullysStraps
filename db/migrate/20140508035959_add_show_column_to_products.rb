class AddShowColumnToProducts < ActiveRecord::Migration
  def change
    add_column :products, :is_showing, :bool
  end
end
