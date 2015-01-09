class AddJokeIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :joke_id, :integer
  end
end
