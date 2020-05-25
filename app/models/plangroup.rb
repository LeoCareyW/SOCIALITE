class Plangroup < ApplicationRecord
  belongs_to :group
  belongs_to :plan
end
