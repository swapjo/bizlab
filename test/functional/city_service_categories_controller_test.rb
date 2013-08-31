require 'test_helper'

class CityServiceCategoriesControllerTest < ActionController::TestCase
  setup do
    @city_service_category = city_service_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:city_service_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create city_service_category" do
    assert_difference('CityServiceCategory.count') do
      post :create, city_service_category: { description: @city_service_category.description, introtext: @city_service_category.introtext, ispublished: @city_service_category.ispublished, name: @city_service_category.name, parent_category_id: @city_service_category.parent_category_id }
    end

    assert_redirected_to city_service_category_path(assigns(:city_service_category))
  end

  test "should show city_service_category" do
    get :show, id: @city_service_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @city_service_category
    assert_response :success
  end

  test "should update city_service_category" do
    put :update, id: @city_service_category, city_service_category: { description: @city_service_category.description, introtext: @city_service_category.introtext, ispublished: @city_service_category.ispublished, name: @city_service_category.name, parent_category_id: @city_service_category.parent_category_id }
    assert_redirected_to city_service_category_path(assigns(:city_service_category))
  end

  test "should destroy city_service_category" do
    assert_difference('CityServiceCategory.count', -1) do
      delete :destroy, id: @city_service_category
    end

    assert_redirected_to city_service_categories_path
  end
end
