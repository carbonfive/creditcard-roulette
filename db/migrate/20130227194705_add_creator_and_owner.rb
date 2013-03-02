class AddCreatorAndOwner < ActiveRecord::Migration
  def up
    add_column(:games, :user_id, :integer)
    add_column(:games, :created_at, :datetime)
    add_column(:games, :updated_at, :datetime)
  end

  def down
  end
end
