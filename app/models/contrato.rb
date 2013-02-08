class Contrato
  include Mongoid::Document
	include Mongoid::Timestamps
	include Mongoid::Paperclip
	
	has_mongoid_attached_file :audio,
														:url => "/assets/contratos/:id/:basename.:extension",
														:path => ":rails_root/public/assets/contratos/:id/:basename.:extension"

  field :clave, type: String
  field :contenido, type: String
  field :cliente, type: String




	validates :clave, :contenido, :cliente, :presence => true
	validates :clave, :uniqueness => true
end
