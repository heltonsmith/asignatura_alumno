class Matricula < ApplicationRecord
  belongs_to :asignatura
  belongs_to :alumno
end
