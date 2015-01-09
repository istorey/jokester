class DropFollowingsTable < ActiveRecord::Migration
  def up
    drop_table :followings 
  end
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
