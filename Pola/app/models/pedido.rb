class Pedido < ApplicationRecord
    has_one :user
    belongs_to :cliente
    has_many :cuadernos
end
