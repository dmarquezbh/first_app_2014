class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  FEMALE = 1
  MALE = 2
  OTHER = 3

  validates :name, presence: true, allow_blank: false
  validates :email, presence: true, allow_blank: false
  #validates :age, presence: true, allow_blank: false
  validates :gender, presence: true, if: :adulthood
  
  validates_uniqueness_of :email

  has_many :bills, dependent: :destroy

  def adulthood
    self.age.present? and self.age >= 18
  end

end
