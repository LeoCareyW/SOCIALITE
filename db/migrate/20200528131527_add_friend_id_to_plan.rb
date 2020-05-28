class AddFriendIdToPlan < ActiveRecord::Migration[6.0]
  def change
    add_reference :plans, :friend
    add_foreign_key :plans, :users, column: :friend_id, primary_key: :id
  end
end
