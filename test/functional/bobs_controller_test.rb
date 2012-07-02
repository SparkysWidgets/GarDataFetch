require 'test_helper'

class BobsControllerTest < ActionController::TestCase
  setup do
    @bob = bobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bob" do
    assert_difference('Bob.count') do
      post :create, bob: { batteryv: @bob.batteryv, humidity: @bob.humidity, ph: @bob.ph, relay1status: @bob.relay1status, relay2status: @bob.relay2status, temp1: @bob.temp1, temp2: @bob.temp2, time: @bob.time }
    end

    assert_redirected_to bob_path(assigns(:bob))
  end

  test "should show bob" do
    get :show, id: @bob
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bob
    assert_response :success
  end

  test "should update bob" do
    put :update, id: @bob, bob: { batteryv: @bob.batteryv, humidity: @bob.humidity, ph: @bob.ph, relay1status: @bob.relay1status, relay2status: @bob.relay2status, temp1: @bob.temp1, temp2: @bob.temp2, time: @bob.time }
    assert_redirected_to bob_path(assigns(:bob))
  end

  test "should destroy bob" do
    assert_difference('Bob.count', -1) do
      delete :destroy, id: @bob
    end

    assert_redirected_to bobs_path
  end
end
