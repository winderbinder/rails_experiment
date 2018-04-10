class Post < ApplicationRecord

  validates_presence_of :title, :body, :date
  belongs_to :user

  def self.search(search)
    where("Car search", "%#{search}%")
  end

end
