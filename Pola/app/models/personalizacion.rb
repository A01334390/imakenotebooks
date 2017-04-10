class Personalizacion < ApplicationRecord
    has_one :cuaderno
    enum tipodehoja: [:Plana,:Rayada,:Agenda]
    enum liston: [:Blanco,:Negro,:Ninguno]
end
