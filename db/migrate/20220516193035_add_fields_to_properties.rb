class AddFieldsToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :security, :integer, default: 0
    add_column :properties, :noise, :integer, default: 0
    add_column :properties, :cleaning, :integer, default: 0
  end
end
