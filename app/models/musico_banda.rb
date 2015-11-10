class MusicoBanda < ActiveRecord::Base
  belongs_to :musico
  belongs_to :banda
end
