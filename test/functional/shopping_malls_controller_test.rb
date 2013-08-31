require 'test_helper'

class ShoppingMallsControllerTest < ActionController::TestCase
  setup do
    @shopping_mall = shopping_malls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shopping_malls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shopping_mall" do
    assert_difference('ShoppingMall.count') do
      post :create, shopping_mall: { address_id: @shopping_mall.address_id, description: @shopping_mall.description, image: @shopping_mall.image, ispublished: @shopping_mall.ispublished, mall_type_id: @shopping_mall.mall_type_id, name: @shopping_mall.name }
    end

    assert_redirected_to shopping_mall_path(assigns(:shopping_mall))
  end

  test "should show shopping_mall" do
    get :show, id: @shopping_mall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shopping_mall
    assert_response :success
  end

  test "should update shopping_mall" do
    put :update, id: @shopping_mall, shopping_mall: { address_id: @shopping_mall.address_id, description: @shopping_mall.description, image: @shopping_mall.image, ispublished: @shopping_mall.ispublished, mall_type_id: @shopping_mall.mall_type_id, name: @shopping_mall.name }
    assert_redirected_to shopping_mall_path(assigns(:shopping_mall))
  end

  test "should destroy shopping_mall" do
    assert_difference('ShoppingMall.count', -1) do
      delete :destroy, id: @shopping_mall
    end

    assert_redirected_to shopping_malls_path
  end
end
