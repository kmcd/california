require 'test_helper'

class OccupanciesControllerTest < ActionController::TestCase
  setup do
    @occupancy = occupancies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:occupancies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create occupancy" do
    assert_difference('Occupancy.count') do
      post :create, :occupancy => @occupancy.attributes
    end

    assert_redirected_to occupancy_path(assigns(:occupancy))
  end

  test "should show occupancy" do
    get :show, :id => @occupancy.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @occupancy.to_param
    assert_response :success
  end

  test "should update occupancy" do
    put :update, :id => @occupancy.to_param, :occupancy => @occupancy.attributes
    assert_redirected_to occupancy_path(assigns(:occupancy))
  end

  test "should destroy occupancy" do
    assert_difference('Occupancy.count', -1) do
      delete :destroy, :id => @occupancy.to_param
    end

    assert_redirected_to occupancies_path
  end
end
