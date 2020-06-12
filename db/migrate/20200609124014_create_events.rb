class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name_event
      t.string :city_name
      t.datetime :start_time
      t.datetime :end_time
      t.text :comment
      t.float :latitude
      t.float :longitude
      t.belongs_to :trip, index: true

      t.timestamps
    end
  end
end
