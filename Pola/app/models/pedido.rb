class Pedido < ApplicationRecord
    has_one :user
    belongs_to :cliente
    has_many :cuadernos
    enum prioridad: [:Baja,:Media,:Alta]
    enum status: [:Design,:Preview,:Laminado,:Revision,:Prensa,:Embalaje,:Enviado,:Entregado]
    validates :prioridad, presence: true
end
