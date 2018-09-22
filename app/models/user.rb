class User < ApplicationRecord
	has_secure_password
	has_many :albums
	enum permission_level: [:user,:admin]
end
