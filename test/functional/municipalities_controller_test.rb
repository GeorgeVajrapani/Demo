require 'test_helper'

class MunicipalitiesControllerTest < ActionController::TestCase
  setup do
    @municipality = municipalities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:municipalities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create municipality" do
    assert_difference('Municipality.count') do
      post :create, :municipality => @municipality.attributes
    end

    assert_redirected_to municipality_path(assigns(:municipality))
  end

  test "should show municipality" do
    get :show, :id => @municipality.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @municipality.to_param
    assert_response :success
  end

  test "should update municipality" do
    put :update, :id => @municipality.to_param, :municipality => @municipality.attributes
    assert_redirected_to municipality_path(assigns(:municipality))
  end

  test "should destroy municipality" do
    assert_difference('Municipality.count', -1) do
      delete :destroy, :id => @municipality.to_param
    end

    assert_redirected_to municipalities_path
  end
end
