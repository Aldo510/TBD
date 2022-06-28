class AddEvidencesToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :evidence, :string
  end
end
