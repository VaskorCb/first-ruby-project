class User < ApplicationRecord
    before_save { self.email = email.downcase}
    has_many :articles, dependent: :destroy
    has_secure_password
    # has_secure_password :recovery_password, validations: false

    # attr_accessor :password_digest, :recovery_password_digest


end
