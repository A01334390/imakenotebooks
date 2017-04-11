require 'test_helper'

class CuadernosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuaderno = cuadernos(:one)
  end

  test "should get index" do
    get cuadernos_url
    assert_response :success
  end

  test "should get new" do
    get new_cuaderno_url
    assert_response :success
  end

  test "should create cuaderno" do
    assert_difference('Cuaderno.count') do
      post cuadernos_url, params: { cuaderno: { beneficio: @cuaderno.beneficio, imagen: @cuaderno.imagen, liston: @cuaderno.liston, resorte: @cuaderno.resorte, tiempo: @cuaderno.tiempo, tipo: @cuaderno.tipo, tipohojas: @cuaderno.tipohojas } }
    end

    assert_redirected_to cuaderno_url(Cuaderno.last)
  end

  test "should show cuaderno" do
    get cuaderno_url(@cuaderno)
    assert_response :success
  end

  test "should get edit" do
    get edit_cuaderno_url(@cuaderno)
    assert_response :success
  end

  test "should update cuaderno" do
    patch cuaderno_url(@cuaderno), params: { cuaderno: { beneficio: @cuaderno.beneficio, imagen: @cuaderno.imagen, liston: @cuaderno.liston, resorte: @cuaderno.resorte, tiempo: @cuaderno.tiempo, tipo: @cuaderno.tipo, tipohojas: @cuaderno.tipohojas } }
    assert_redirected_to cuaderno_url(@cuaderno)
  end

  test "should destroy cuaderno" do
    assert_difference('Cuaderno.count', -1) do
      delete cuaderno_url(@cuaderno)
    end

    assert_redirected_to cuadernos_url
  end
end
