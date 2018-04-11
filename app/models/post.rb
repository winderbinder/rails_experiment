class Post < ApplicationRecord

  validates_presence_of :make, :model, :year, :trim

  def self.search(search)
    where("Car search", "%#{search}%")
  end

end
