require 'test_helper'

class BusinessItemsControllerTest < ActionController::TestCase
  setup do
    @business_item = business_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:business_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create business_item" do
    assert_difference('BusinessItem.count') do
      post :create, business_item: { address_id: @business_item.address_id, business_item_category_id: @business_item.business_item_category_id, company_id: @business_item.company_id, expiry_date: @business_item.expiry_date, image: @business_item.image, isapproved: @business_item.isapproved, ispublished: @business_item.ispublished, shopping_mall_id: @business_item.shopping_mall_id, title: @business_item.title, user_id: @business_item.user_id }
    end

    assert_redirected_to business_item_path(assigns(:business_item))
  end

  test "should show business_item" do
    get :show, id: @business_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @business_item
    assert_response :success
  end

  test "should update business_item" do
    put :update, id: @business_item, business_item: { address_id: @business_item.address_id, business_item_category_id: @business_item.business_item_category_id, company_id: @business_item.company_id, expiry_date: @business_item.expiry_date, image: @business_item.image, isapproved: @business_item.isapproved, ispublished: @business_item.ispublished, shopping_mall_id: @business_item.shopping_mall_id, title: @business_item.title, user_id: @business_item.user_id }
    assert_redirected_to business_item_path(assigns(:business_item))
  end

  test "should destroy business_item" do
    assert_difference('BusinessItem.count', -1) do
      delete :destroy, id: @business_item
    end

    assert_redirected_to business_items_path
  end
end
