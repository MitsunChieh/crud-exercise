class ChangeActorTypeToText < ActiveRecord::Migration
  def change
    change_column :japan_dramas, :actor, :text
  end
end
