class CreatePersonalizacions < ActiveRecord::Migration[5.0]
  def change
    create_table :personalizacions do |t|
      t.integer :liston
      t.string :imagen
      t.boolean :resorte
      t.integer :tipodehoja

      t.timestamps
    end
  end
end
