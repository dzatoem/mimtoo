class Round < ApplicationRecord
  belongs_to :action
  belongs_to :character
  belongs_to :player
end
