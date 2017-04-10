class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials do |t|
      t.string :nombre
      t.integer :cantidad

      t.timestamps
    end
  end
end
