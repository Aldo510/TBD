class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :address
      t.string :image
      t.float :rating

      t.timestamps
    end
  end
end
