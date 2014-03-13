class AddStrapDescriptionsToProduct < ActiveRecord::Migration
  def change
    add_column :products, :strap_description, :text
    add_column :products, :shoulder_description, :text
  end
end
