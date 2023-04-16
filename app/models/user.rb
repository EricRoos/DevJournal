class User < ApplicationRecord
  devise :omniauthable, omniauth_providers: [:github]
end
