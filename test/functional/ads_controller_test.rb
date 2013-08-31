require 'test_helper'

class AdsControllerTest < ActionController::TestCase
  setup do
    @ad = ads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad" do
    assert_difference('Ad.count') do
      post :create, ad: { ad_category_id: @ad.ad_category_id, ad_position_id: @ad.ad_position_id, ad_type_id: @ad.ad_type_id, address_id: @ad.address_id, company_id: @ad.company_id, description: @ad.description, expiry_date: @ad.expiry_date, image: @ad.image, isapproved: @ad.isapproved, ispublished: @ad.ispublished, price: @ad.price, shopping_mall_id: @ad.shopping_mall_id, title: @ad.title, user_id: @ad.user_id }
    end

    assert_redirected_to ad_path(assigns(:ad))
  end

  test "should show ad" do
    get :show, id: @ad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ad
    assert_response :success
  end

  test "should update ad" do
    put :update, id: @ad, ad: { ad_category_id: @ad.ad_category_id, ad_position_id: @ad.ad_position_id, ad_type_id: @ad.ad_type_id, address_id: @ad.address_id, company_id: @ad.company_id, description: @ad.description, expiry_date: @ad.expiry_date, image: @ad.image, isapproved: @ad.isapproved, ispublished: @ad.ispublished, price: @ad.price, shopping_mall_id: @ad.shopping_mall_id, title: @ad.title, user_id: @ad.user_id }
    assert_redirected_to ad_path(assigns(:ad))
  end

  test "should destroy ad" do
    assert_difference('Ad.count', -1) do
      delete :destroy, id: @ad
    end

    assert_redirected_to ads_path
  end
end
