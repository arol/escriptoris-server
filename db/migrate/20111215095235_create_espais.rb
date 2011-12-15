class CreateEspais < ActiveRecord::Migration
  def change
    create_table :espais do |t|
      t.string :nom
      t.text :descripcio
      t.string :direccio
      t.string :codipostal
      t.float :lat
      t.float :lang
      t.string :tags
      t.string :imatge

      t.timestamps
    end
  end
end
