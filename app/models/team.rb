class Team < ApplicationRecord
  belongs_to :party
  has_many :players
end
