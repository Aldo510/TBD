class AddEvidencesToProperty < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :evidence, :string
  end
end
