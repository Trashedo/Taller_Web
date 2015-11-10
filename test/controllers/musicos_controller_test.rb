require 'test_helper'

class MusicosControllerTest < ActionController::TestCase
  setup do
    @musico = musicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:musicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create musico" do
    assert_difference('Musico.count') do
      post :create, musico: { instrumento_id: @musico.instrumento_id, instrumento_id: @musico.instrumento_id, materno: @musico.materno, nombre: @musico.nombre, paterno: @musico.paterno, usuario_id: @musico.usuario_id, usuario_id: @musico.usuario_id }
    end

    assert_redirected_to musico_path(assigns(:musico))
  end

  test "should show musico" do
    get :show, id: @musico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @musico
    assert_response :success
  end

  test "should update musico" do
    patch :update, id: @musico, musico: { instrumento_id: @musico.instrumento_id, instrumento_id: @musico.instrumento_id, materno: @musico.materno, nombre: @musico.nombre, paterno: @musico.paterno, usuario_id: @musico.usuario_id, usuario_id: @musico.usuario_id }
    assert_redirected_to musico_path(assigns(:musico))
  end

  test "should destroy musico" do
    assert_difference('Musico.count', -1) do
      delete :destroy, id: @musico
    end

    assert_redirected_to musicos_path
  end
end
