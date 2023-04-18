class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :registerable, :omniauthable, omniauth_providers: [:github]

  def update_cache_keys
    Rails.cache.write([User, :cache_key, self.id], self.updated_at)
  end

  def self.cached_find(id)
    updated_at = Rails.cache.read([User, :cache_key, id])
    project = nil

    if !updated_at
      project = User.find(id)
      updated_at = project.updated_at
      project.update_cache_keys
    end

    Rails.cache.fetch([User, :cached, id, updated_at]) do
      project ||= User.find(id)
    end
  end
  def self.from_omniauth(auth)
    find_or_create_by(source: auth.provider, uuid: auth.uid) do |user|
      user.email = auth.info.email
      # If you are using confirmable and the provider(s) you use validate emails, 
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end
end
