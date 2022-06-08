class Asignatura < ApplicationRecord
    has_many :matriculas
    has_many :alumnos, through: :matriculas
end
