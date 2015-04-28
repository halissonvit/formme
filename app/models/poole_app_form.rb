class PooleAppForm < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true
  validates :title, presence: true
  validates :api_key, presence: true
  validates :api_secret, presence: true
end
