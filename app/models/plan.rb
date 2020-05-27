class Plan < ApplicationRecord
  belongs_to :place
  belongs_to :user
  belongs_to :group, optional: true
end
