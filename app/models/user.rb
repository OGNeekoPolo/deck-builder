class User < ApplicationRecord
    has_secure_password

    validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
    validates :email, :presence => true, :uniqueness => true #password_confirmation attr
    validates_length_of :password, :in => 6..20, :on => :create  
end
