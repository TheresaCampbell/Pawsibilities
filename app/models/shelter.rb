class Shelter < ApplicationRecord
  :authenticate_with_credentials
  has_secure_password

  # Comment out code beneath this line when running DownloadSheltersJob

  validates_uniqueness_of :email,  :case_sensitive => false
  validates_uniqueness_of :shelter_id
  validates_presence_of :name, :email, :address, :phone


  def self.authenticate_with_credentials(email, password)
    email.downcase!
    user = Shelter.find_by_email(email.strip)
    return user && user.authenticate(password)
  end

  # Comment out code above this line when running DownloadSheltersJob


end
