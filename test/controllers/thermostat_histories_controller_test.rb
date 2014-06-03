require 'test_helper'

class ThermostatHistoriesControllerTest < ActionController::TestCase
  setup do
    @thermostat_history = thermostat_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thermostat_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thermostat_history" do
    assert_difference('ThermostatHistory.count') do
      post :create, thermostat_history: { co2: @thermostat_history.co2, humidity: @thermostat_history.humidity, kw: @thermostat_history.kw, temperature: @thermostat_history.temperature, thermostat_id: @thermostat_history.thermostat_id }
    end

    assert_redirected_to thermostat_history_path(assigns(:thermostat_history))
  end

  test "should show thermostat_history" do
    get :show, id: @thermostat_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thermostat_history
    assert_response :success
  end

  test "should update thermostat_history" do
    patch :update, id: @thermostat_history, thermostat_history: { co2: @thermostat_history.co2, humidity: @thermostat_history.humidity, kw: @thermostat_history.kw, temperature: @thermostat_history.temperature, thermostat_id: @thermostat_history.thermostat_id }
    assert_redirected_to thermostat_history_path(assigns(:thermostat_history))
  end

  test "should destroy thermostat_history" do
    assert_difference('ThermostatHistory.count', -1) do
      delete :destroy, id: @thermostat_history
    end

    assert_redirected_to thermostat_histories_path
  end
end
