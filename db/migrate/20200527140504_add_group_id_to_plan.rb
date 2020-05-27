class AddGroupIdToPlan < ActiveRecord::Migration[6.0]
  def change
    add_reference :plans, :group, index: true
    add_foreign_key :plans, :groups
  end
end
