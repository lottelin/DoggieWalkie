class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :sex
      t.string :age
      t.string :photo
      t.text :hangouts
      t.string :map_marker
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
