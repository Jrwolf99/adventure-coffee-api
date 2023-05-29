class Origin < ApplicationRecord
    has_many :beans, dependent: :destroy
end
