class User < ActiveRecord::Base
  validates_presence_of :username, :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates_length_of :username, :within => 4..20
  attr_accessor :password_confirmation, :email_confirmation
  validates_confirmation_of :password, :email
  validates_uniqueness_of :username,:email
  validates_length_of :password, :within => 6..12

  def password
    @password
  end
  def password=(pwd)
    @password = pwd
    return if pwd.blank?  # 停止处理的意思
    create_new_salt
    self.hashed_password = User.encrypted_password(self.password, self.salt)
  end

private
  def create_new_salt
    self.salt = self.object_id.to_s + rand.to_s
  end
  def self.encrypted_password(password,salt)
    string_to_hash = password + salt
    Digest::SHA1.hexdigest(string_to_hash)
  end

#  def self.authenticate(username,password)
#  end

end
