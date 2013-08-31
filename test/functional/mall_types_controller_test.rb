require 'test_helper'

class MallTypesControllerTest < ActionController::TestCase
  setup do
    @mall_type = mall_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mall_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mall_type" do
    assert_difference('MallType.count') do
      post :create, mall_type: { description: @mall_type.description, introtext: @mall_type.introtext, ispublished: @mall_type.ispublished, name: @mall_type.name }
    end

    assert_redirected_to mall_type_path(assigns(:mall_type))
  end

  test "should show mall_type" do
    get :show, id: @mall_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mall_type
    assert_response :success
  end

  test "should update mall_type" do
    put :update, id: @mall_type, mall_type: { description: @mall_type.description, introtext: @mall_type.introtext, ispublished: @mall_type.ispublished, name: @mall_type.name }
    assert_redirected_to mall_type_path(assigns(:mall_type))
  end

  test "should destroy mall_type" do
    assert_difference('MallType.count', -1) do
      delete :destroy, id: @mall_type
    end

    assert_redirected_to mall_types_path
  end
end
