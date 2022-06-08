class CreateAsignaturas < ActiveRecord::Migration[7.0]
  def change
    create_table :asignaturas do |t|
      t.string :name

      t.timestamps
    end
  end
end
