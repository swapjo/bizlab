require 'test_helper'

class BookmarkBusinessItemsControllerTest < ActionController::TestCase
  setup do
    @bookmark_business_item = bookmark_business_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookmark_business_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookmark_business_item" do
    assert_difference('BookmarkBusinessItem.count') do
      post :create, bookmark_business_item: { business_item_id: @bookmark_business_item.business_item_id, user_id: @bookmark_business_item.user_id }
    end

    assert_redirected_to bookmark_business_item_path(assigns(:bookmark_business_item))
  end

  test "should show bookmark_business_item" do
    get :show, id: @bookmark_business_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookmark_business_item
    assert_response :success
  end

  test "should update bookmark_business_item" do
    put :update, id: @bookmark_business_item, bookmark_business_item: { business_item_id: @bookmark_business_item.business_item_id, user_id: @bookmark_business_item.user_id }
    assert_redirected_to bookmark_business_item_path(assigns(:bookmark_business_item))
  end

  test "should destroy bookmark_business_item" do
    assert_difference('BookmarkBusinessItem.count', -1) do
      delete :destroy, id: @bookmark_business_item
    end

    assert_redirected_to bookmark_business_items_path
  end
end
