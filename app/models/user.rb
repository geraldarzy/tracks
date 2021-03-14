class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:github, :google_oauth2]

  validates :username, presence: true
  validates :username, uniqueness: true


  #show posts a user made
  has_many :posts
  #show comments a user made/show who owner of comment is
  has_many :comments
  #show stations a user has commented on
  has_many :stations, through: :posts

  def home_station=(station_id)
    home_station = Station.find(station_id)
    save
  end

  def self.create_from_provider_data(provider_data)
    where(provider: provider_data.provider, uid: provider_data.uid).first_or_create  do |user|
      user.email = provider_data.info.email
      user.username = provider_data.info.email  #since username validates presence
      user.password = Devise.friendly_token[0, 20]
    end
  end

  def account_info
    {"First Name":first_name, "Last Name":last_name, "Username":username, "E-mail":email, "Home Station":home_station}
  end
end