class Material < ApplicationRecord
    #has_and_belongs_to_many :cuadernos
    validates :nombre,presence: true,uniqueness: true
    validates :cantidad,presence: true
end
