class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :description
      t.string :topic
      t.string :image
      t.boolean :publico
      t.timestamps
    end
  end
end
