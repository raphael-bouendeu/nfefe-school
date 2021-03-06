class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]
         validates :name, presence: true, length: {minimum:3, maximum:33}


has_many :subscriptions
has_many :projects,through: :subscriptions
has_many :reviews

def self.find_for_google_oauth2(access_token,signed_in_resource=nil)
  data=access_token.info
  user=User.where(:provider=>access_token.provider,:uid=>access_token.uid).first
  if user
    user
  else
    registered_user=User.where(:email =>access_token.email).first
    if registered_user
      registered_user
    else
      user=User.create(
      name: data['name'],
      provider: access_token.provider,
      email:data["email"],
      uid: access_token.uid,
      password: Divise.friendly_token[0,20]
      )
    end
  end
end


end
