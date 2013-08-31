require 'test_helper'

class AdCategoriesControllerTest < ActionController::TestCase
  setup do
    @ad_category = ad_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ad_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad_category" do
    assert_difference('AdCategory.count') do
      post :create, ad_category: { description: @ad_category.description, image: @ad_category.image, introtext: @ad_category.introtext, ispublished: @ad_category.ispublished, name: @ad_category.name, parent_category_id: @ad_category.parent_category_id }
    end

    assert_redirected_to ad_category_path(assigns(:ad_category))
  end

  test "should show ad_category" do
    get :show, id: @ad_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ad_category
    assert_response :success
  end

  test "should update ad_category" do
    put :update, id: @ad_category, ad_category: { description: @ad_category.description, image: @ad_category.image, introtext: @ad_category.introtext, ispublished: @ad_category.ispublished, name: @ad_category.name, parent_category_id: @ad_category.parent_category_id }
    assert_redirected_to ad_category_path(assigns(:ad_category))
  end

  test "should destroy ad_category" do
    assert_difference('AdCategory.count', -1) do
      delete :destroy, id: @ad_category
    end

    assert_redirected_to ad_categories_path
  end
end
