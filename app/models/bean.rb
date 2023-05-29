class Bean < ApplicationRecord
  belongs_to :origin
  has_many :cups
end
