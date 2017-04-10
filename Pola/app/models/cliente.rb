class Cliente < ApplicationRecord
    #has_many :pedidos
    validates :nombre, presence: true, length: {minimum: 3, maximum: 50}
    validates :direccion, presence: true, length: {minimum: 3, maximum: 100}
    has_many :pedidos

end
