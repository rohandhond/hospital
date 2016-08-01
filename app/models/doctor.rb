class Doctor < ActiveRecord::Base
  has_one :user, as: :profile
  has_many :patients, dependent: :destroy
end
