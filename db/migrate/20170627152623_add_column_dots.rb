class AddColumnDots < ActiveRecord::Migration[5.0]
  def change
	add_column :dots, :speed, :float
  end
end
