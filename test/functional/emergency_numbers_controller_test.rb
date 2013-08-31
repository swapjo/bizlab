require 'test_helper'

class EmergencyNumbersControllerTest < ActionController::TestCase
  setup do
    @emergency_number = emergency_numbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emergency_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emergency_number" do
    assert_difference('EmergencyNumber.count') do
      post :create, emergency_number: { image: @emergency_number.image, ispublished: @emergency_number.ispublished, name: @emergency_number.name, priority: @emergency_number.priority, value: @emergency_number.value }
    end

    assert_redirected_to emergency_number_path(assigns(:emergency_number))
  end

  test "should show emergency_number" do
    get :show, id: @emergency_number
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emergency_number
    assert_response :success
  end

  test "should update emergency_number" do
    put :update, id: @emergency_number, emergency_number: { image: @emergency_number.image, ispublished: @emergency_number.ispublished, name: @emergency_number.name, priority: @emergency_number.priority, value: @emergency_number.value }
    assert_redirected_to emergency_number_path(assigns(:emergency_number))
  end

  test "should destroy emergency_number" do
    assert_difference('EmergencyNumber.count', -1) do
      delete :destroy, id: @emergency_number
    end

    assert_redirected_to emergency_numbers_path
  end
end
