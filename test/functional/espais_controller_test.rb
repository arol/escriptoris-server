require 'test_helper'

class EspaisControllerTest < ActionController::TestCase
  setup do
    @espai = espais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:espais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create espai" do
    assert_difference('Espai.count') do
      post :create, espai: @espai.attributes
    end

    assert_redirected_to espai_path(assigns(:espai))
  end

  test "should show espai" do
    get :show, id: @espai.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @espai.to_param
    assert_response :success
  end

  test "should update espai" do
    put :update, id: @espai.to_param, espai: @espai.attributes
    assert_redirected_to espai_path(assigns(:espai))
  end

  test "should destroy espai" do
    assert_difference('Espai.count', -1) do
      delete :destroy, id: @espai.to_param
    end

    assert_redirected_to espais_path
  end
end
