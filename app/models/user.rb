class User < ActiveRecord::Base
 
  def self.from_omniauth(auth_info)
    user = where(uid: auth_info[:uid]).first_or_create do |new_user|
      new_user.uid                = auth_info.uid
      new_user.name               = auth_info.extra.raw_info.name
      new_user.username           = auth_info.extra.raw_info.login
      new_user.token              = auth_info.credentials.token
    end
    user
  end
end