class Note < ActiveRecord::Base
scope :verdadero, ->{where(publico: true) }

end
