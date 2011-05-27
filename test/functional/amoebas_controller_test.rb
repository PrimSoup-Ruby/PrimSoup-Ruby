require 'test_helper'

class AmoebasControllerTest < ActionController::TestCase
  setup do
    @amoeba = amoebas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:amoebas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create amoeba" do
    assert_difference('Amoeba.count') do
      post :create, :amoeba => @amoeba.attributes
    end

    assert_redirected_to amoeba_path(assigns(:amoeba))
  end

  test "should show amoeba" do
    get :show, :id => @amoeba.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @amoeba.to_param
    assert_response :success
  end

  test "should update amoeba" do
    put :update, :id => @amoeba.to_param, :amoeba => @amoeba.attributes
    assert_redirected_to amoeba_path(assigns(:amoeba))
  end

  test "should destroy amoeba" do
    assert_difference('Amoeba.count', -1) do
      delete :destroy, :id => @amoeba.to_param
    end

    assert_redirected_to amoebas_path
  end
end
