class User < ApplicationRecord
    validates :name,:email, :password, presence: {message: "Không được để trống email"}, uniqueness: true
    validates :password, confirmation: true, length: { minimum: 3}
    validates :password_confirmation, presence: true
end