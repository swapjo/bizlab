require 'test_helper'

class BusinessItemCategoriesControllerTest < ActionController::TestCase
  setup do
    @business_item_category = business_item_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_item_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_item_category" do
    assert_difference('BusinessItemCategory.count') do
      post :create, business_item_category: { description: @business_item_category.description, introtext: @business_item_category.introtext, ispublished: @business_item_category.ispublished, name: @business_item_category.name, parent_category_id: @business_item_category.parent_category_id }
    end

    assert_redirected_to business_item_category_path(assigns(:business_item_category))
  end

  test "should show business_item_category" do
    get :show, id: @business_item_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_item_category
    assert_response :success
  end

  test "should update business_item_category" do
    put :update, id: @business_item_category, business_item_category: { description: @business_item_category.description, introtext: @business_item_category.introtext, ispublished: @business_item_category.ispublished, name: @business_item_category.name, parent_category_id: @business_item_category.parent_category_id }
    assert_redirected_to business_item_category_path(assigns(:business_item_category))
  end

  test "should destroy business_item_category" do
    assert_difference('BusinessItemCategory.count', -1) do
      delete :destroy, id: @business_item_category
    end

    assert_redirected_to business_item_categories_path
  end
end
