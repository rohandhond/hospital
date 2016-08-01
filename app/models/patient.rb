class Patient < ActiveRecord::Base
  has_one :user, as: :profile
  has_many :documents, dependent: :destroy
  belongs_to :doctor
end
