class Project < ApplicationRecord
extend FriendlyId
friendly_id :name, use: [:slugged,:finders]
has_many :reviews
has_many :tasks
has_many :subscriptions
has_many :users,through: :subscriptions
validates :name, presence: true,length: {maximum: 50}
validates :content, presence: true,length: {maximum: 500}
validates :price, presence: true,numericality:{only_integer:true}
validates :image, presence: true
has_one_attached :image, :dependent=>:destroy

def shortname
  name.length > 15? name[0..15]+"...": name
end


def average_rating
  	reviews.blank? ? 0 : reviews.average(:star).round(2)
end

end
