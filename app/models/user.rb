class User
  include Mongoid::Document
  rolify :role_cname => 'Admin'
	attr_accessible :username, :email, :password, :password_confirmation
	authenticates_with_sorcery!

	field :username, type: String
	field :email, type: String
	field :username, type: String
	field :password, type: String

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :username, :email, :password
  validates_uniqueness_of :username, :email

end

