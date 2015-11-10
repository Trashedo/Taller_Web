class Musico < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :instrumento

  has_many :musico_banda
  has_many :banda, :through => :musico_banda
end
