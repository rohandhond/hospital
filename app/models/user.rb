class User < ActiveRecord::Base
  has_secure_password

  validates :name, presence: true
  validates :age, presence: true
  validates :email, presence: true,
                    format: /\A\S+@\S+\z/,
                    uniqueness: { case_sensitive: false}

  belongs_to :profile, polymorphic: true

  def role
    profile.profile_type.downcase # 'admin', 'doctor' or 'patient'
  end

  def doctor(profile_id)
    Doctor.find(profile_id)
  end

  def patient(profile_id)
    Patient.find((profile_id))
  end

  def self.authenticate(email,password)
    user = User.find_by(email: email)
    user && user.authenticate(password)
  end
end
