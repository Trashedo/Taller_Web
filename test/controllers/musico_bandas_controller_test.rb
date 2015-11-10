require 'test_helper'

class MusicoBandasControllerTest < ActionController::TestCase
  setup do
    @musico_banda = musico_bandas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:musico_bandas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create musico_banda" do
    assert_difference('MusicoBanda.count') do
      post :create, musico_banda: { banda_id: @musico_banda.banda_id, musico_id: @musico_banda.musico_id }
    end

    assert_redirected_to musico_banda_path(assigns(:musico_banda))
  end

  test "should show musico_banda" do
    get :show, id: @musico_banda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @musico_banda
    assert_response :success
  end

  test "should update musico_banda" do
    patch :update, id: @musico_banda, musico_banda: { banda_id: @musico_banda.banda_id, musico_id: @musico_banda.musico_id }
    assert_redirected_to musico_banda_path(assigns(:musico_banda))
  end

  test "should destroy musico_banda" do
    assert_difference('MusicoBanda.count', -1) do
      delete :destroy, id: @musico_banda
    end

    assert_redirected_to musico_bandas_path
  end
end
