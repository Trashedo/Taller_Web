class Banda < ActiveRecord::Base

	has_many :musico_banda
	has_many :musico, :through => :musico_banda

end
