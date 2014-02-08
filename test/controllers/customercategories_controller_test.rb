require 'test_helper'

class CustomercategoriesControllerTest < ActionController::TestCase
  setup do
    @customercategory = customercategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customercategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customercategory" do
    assert_difference('Customercategory.count') do
      post :create, customercategory: { name: @customercategory.name }
    end

    assert_redirected_to customercategory_path(assigns(:customercategory))
  end

  test "should show customercategory" do
    get :show, id: @customercategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customercategory
    assert_response :success
  end

  test "should update customercategory" do
    patch :update, id: @customercategory, customercategory: { name: @customercategory.name }
    assert_redirected_to customercategory_path(assigns(:customercategory))
  end

  test "should destroy customercategory" do
    assert_difference('Customercategory.count', -1) do
      delete :destroy, id: @customercategory
    end

    assert_redirected_to customercategories_path
  end
end
