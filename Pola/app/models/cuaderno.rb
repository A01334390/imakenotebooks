class Cuaderno < ApplicationRecord
    belongs_to :personalizacion
    has_and_belongs_to_many :materials
    belongs_to :pedido
end
