require 'test_helper'

class ThemostatsControllerTest < ActionController::TestCase
  setup do
    @themostat = themostats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:themostats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create themostat" do
    assert_difference('Themostat.count') do
      post :create, themostat: { serial: @themostat.serial }
    end

    assert_redirected_to themostat_path(assigns(:themostat))
  end

  test "should show themostat" do
    get :show, id: @themostat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @themostat
    assert_response :success
  end

  test "should update themostat" do
    patch :update, id: @themostat, themostat: { serial: @themostat.serial }
    assert_redirected_to themostat_path(assigns(:themostat))
  end

  test "should destroy themostat" do
    assert_difference('Themostat.count', -1) do
      delete :destroy, id: @themostat
    end

    assert_redirected_to themostats_path
  end
end
