class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :base_favorite
end
