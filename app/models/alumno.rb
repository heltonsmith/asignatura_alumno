class Alumno < ApplicationRecord
    has_many :matriculas
    has_many :asignaturas, through: :matriculas
end
