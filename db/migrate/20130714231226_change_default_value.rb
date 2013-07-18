class ChangeDefaultValue < ActiveRecord::Migration
  def change
  	change_column :notes, :publico, :boolean, :default => false
  end
end
