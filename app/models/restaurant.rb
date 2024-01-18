class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, :inclusion => { :in => ["chinese", "italian", "japanese", "french", "belgian"], :message => "should be chinese, italian, japanese, french, belgian" }
end
