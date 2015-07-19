class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :identities

  devise :omniauthable,:database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :omniauth_providers => [:instagram]

  def instagram
    identities.where( :provider => "instagram" ).first
  end

   def instagram_client
    @instagram_client ||= Instagram.client( access_token: instagram.accesstoken )
  end
end
