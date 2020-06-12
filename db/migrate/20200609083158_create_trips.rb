class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :title
      t.text :description
      t.string :country_name
      t.string :city_name
      t.datetime :start_date
      t.datetime :end_date
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
