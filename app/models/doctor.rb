class Doctor < ActiveRecord::Base
  has_many :interns # gives .interns which returns an array with all the interns instances
  has_many :consultations
  has_many :patients, through: :consultations

  validates :last_name, presence: true
  validates :last_name, uniqueness: { scope: :first_name } # this columns pair should be unique
end
