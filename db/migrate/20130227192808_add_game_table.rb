class AddGameTable < ActiveRecord::Migration
  def up
    create_table :games do |t|
      t.string :name
    end
  end

  def down
  end
end
