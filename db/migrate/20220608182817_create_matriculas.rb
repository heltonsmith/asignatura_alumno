class CreateMatriculas < ActiveRecord::Migration[7.0]
  def change
    create_table :matriculas do |t|
      t.references :asignatura, null: false, foreign_key: true
      t.references :alumno, null: false, foreign_key: true
      t.integer :semestre

      t.timestamps
    end
  end
end
