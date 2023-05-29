class User < ApplicationRecord
    has_many :cups, dependent: :destroy
end
