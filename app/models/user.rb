
class User < ActiveRecord::Base

  FEMALE = 1
  MALE = 2
  OTHER = 3

  validates :name, presence: true, allow_blank: false
  validates :email, presence: true, allow_blank: false
  validates :gender, presence: true, if: :adulthood
  
  #validates_uniqueness_of :email

  def adulthood
    self.age.present? and self.age >= 18
  end

end
