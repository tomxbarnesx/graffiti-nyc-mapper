class User < ApplicationRecord
  has_many :pieces, dependent: :nullify
  has_one_attached :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def avatar_url
    if self.avatar.attachment
      self.avatar.attachment.service_url
    end
  end

end
