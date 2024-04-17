class SavedPin < ApplicationRecord
  belongs_to :pin
  belongs_to :user
  belongs_to :board, optional: true
  
end
