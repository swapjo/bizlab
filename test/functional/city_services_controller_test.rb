require 'test_helper'

class CityServicesControllerTest < ActionController::TestCase
  setup do
    @city_service = city_services(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:city_services)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create city_service" do
    assert_difference('CityService.count') do
      post :create, city_service: { city_service_category_id: @city_service.city_service_category_id, description: @city_service.description, image: @city_service.image, ispublished: @city_service.ispublished, title: @city_service.title }
    end

    assert_redirected_to city_service_path(assigns(:city_service))
  end

  test "should show city_service" do
    get :show, id: @city_service
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @city_service
    assert_response :success
  end

  test "should update city_service" do
    put :update, id: @city_service, city_service: { city_service_category_id: @city_service.city_service_category_id, description: @city_service.description, image: @city_service.image, ispublished: @city_service.ispublished, title: @city_service.title }
    assert_redirected_to city_service_path(assigns(:city_service))
  end

  test "should destroy city_service" do
    assert_difference('CityService.count', -1) do
      delete :destroy, id: @city_service
    end

    assert_redirected_to city_services_path
  end
end
