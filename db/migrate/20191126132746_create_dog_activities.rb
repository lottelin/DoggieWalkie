class CreateDogActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_activities do |t|
      t.references :activity, foreign_key: true
      t.references :dog, foreign_key: true

      t.timestamps
    end
  end
end
