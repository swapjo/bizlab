require 'test_helper'

class BookmarkAdsControllerTest < ActionController::TestCase
  setup do
    @bookmark_ad = bookmark_ads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookmark_ads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookmark_ad" do
    assert_difference('BookmarkAd.count') do
      post :create, bookmark_ad: { ad_id: @bookmark_ad.ad_id, user_id: @bookmark_ad.user_id }
    end

    assert_redirected_to bookmark_ad_path(assigns(:bookmark_ad))
  end

  test "should show bookmark_ad" do
    get :show, id: @bookmark_ad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookmark_ad
    assert_response :success
  end

  test "should update bookmark_ad" do
    put :update, id: @bookmark_ad, bookmark_ad: { ad_id: @bookmark_ad.ad_id, user_id: @bookmark_ad.user_id }
    assert_redirected_to bookmark_ad_path(assigns(:bookmark_ad))
  end

  test "should destroy bookmark_ad" do
    assert_difference('BookmarkAd.count', -1) do
      delete :destroy, id: @bookmark_ad
    end

    assert_redirected_to bookmark_ads_path
  end
end
