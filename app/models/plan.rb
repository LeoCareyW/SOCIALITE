class Plan < ApplicationRecord
  belongs_to :place
  belongs_to :user
  belongs_to :friend, :class_name => "User", optional: true
  belongs_to :group, optional: true
end
