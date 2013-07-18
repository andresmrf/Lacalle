class RemoveimagefromNotes < ActiveRecord::Migration
  def up
  
  remove_column :notes, :image
  end

  def down

  add_column :notes, :image, :string
  end

end
