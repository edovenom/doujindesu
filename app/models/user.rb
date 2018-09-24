class User < ApplicationRecord
	has_secure_password
	has_many :albums
	validates :email, :name, uniqueness: true
	validates :email, :name, :permission_level, :password_digest, null: false
	enum permission_level: [:user,:admin]


	def self.email_to_name(email)
	  name = email[/[^@]+/].to_s
	  name.split(".").map {|n| n.capitalize }.join(" ")
	end
end
