class CreateDots < ActiveRecord::Migration[5.0]
  def change
    create_table :dots do |t|
      t.float :latitude
      t.float :longtitude
      t.string :typename
      t.float :degree
      t.datetime :time

      t.timestamps
    end
  end
end
