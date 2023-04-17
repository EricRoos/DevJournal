class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :registerable, :omniauthable, omniauth_providers: [:github]

  def self.from_omniauth(auth)
    find_or_create_by(source: auth.provider, uuid: auth.uid) do |user|
      user.email = auth.info.email
      # If you are using confirmable and the provider(s) you use validate emails, 
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end
end
