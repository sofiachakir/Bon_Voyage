class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :image_url
      t.text :text
      t.timestamps
    end
  end
end
