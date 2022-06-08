require "application_system_test_case"

class MatriculasTest < ApplicationSystemTestCase
  setup do
    @matricula = matriculas(:one)
  end

  test "visiting the index" do
    visit matriculas_url
    assert_selector "h1", text: "Matriculas"
  end

  test "should create matricula" do
    visit matriculas_url
    click_on "New matricula"

    fill_in "Alumno", with: @matricula.alumno_id
    fill_in "Asignatura", with: @matricula.asignatura_id
    fill_in "Semestre", with: @matricula.semestre
    click_on "Create Matricula"

    assert_text "Matricula was successfully created"
    click_on "Back"
  end

  test "should update Matricula" do
    visit matricula_url(@matricula)
    click_on "Edit this matricula", match: :first

    fill_in "Alumno", with: @matricula.alumno_id
    fill_in "Asignatura", with: @matricula.asignatura_id
    fill_in "Semestre", with: @matricula.semestre
    click_on "Update Matricula"

    assert_text "Matricula was successfully updated"
    click_on "Back"
  end

  test "should destroy Matricula" do
    visit matricula_url(@matricula)
    click_on "Destroy this matricula", match: :first

    assert_text "Matricula was successfully destroyed"
  end
end
