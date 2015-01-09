class CreateJokes < ActiveRecord::Migration
  def change
    create_table :jokes do |t|
      t.string :body
    end
  end
end
