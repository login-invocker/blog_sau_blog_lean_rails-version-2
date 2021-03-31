class User < ApplicationRecord
    belongs_to :post
    validates :name,:email, :password, presence: {message: "Không được để trống"}, uniqueness: {message: "đã tồn tại"}
    validates :password, confirmation: {message: "không khớp"}, length: { minimum: 3, message: "cần > 3 kí tự"}
    validates :password_confirmation, presence: {message: "Không được trống"}

    scope :check_email, -> (email) { where(email: email) }
    scope :check_password, -> (password) { where(password: password) }
    scope :find_user, -> (email, password) { find_by(email: email,password: password) }

end