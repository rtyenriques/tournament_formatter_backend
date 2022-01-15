class Competition < ApplicationRecord
    has_many :entries, dependent: :destroy
end
