class CreateJapanDramas < ActiveRecord::Migration
  def change
    create_table :japan_dramas do |t|
      t.string :name
      t.date :date
      t.string :actor
      t.timestamps
    end
  end
end
