class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :image_url
      t.text :text
      t.belongs_to :event, index: true

      t.timestamps
    end
  end
end
