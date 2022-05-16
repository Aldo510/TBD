class CreateOwners < ActiveRecord::Migration[7.0]
  def change
    create_table :owners do |t|
      t.string :name
      t.float :atention
      t.float :respuesta
      t.float :amabilidad

      t.timestamps
    end
  end
end
