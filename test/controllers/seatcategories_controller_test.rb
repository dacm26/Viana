require 'test_helper'

class SeatcategoriesControllerTest < ActionController::TestCase
  setup do
    @seatcategory = seatcategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seatcategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seatcategory" do
    assert_difference('Seatcategory.count') do
      post :create, seatcategory: { name: @seatcategory.name }
    end

    assert_redirected_to seatcategory_path(assigns(:seatcategory))
  end

  test "should show seatcategory" do
    get :show, id: @seatcategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seatcategory
    assert_response :success
  end

  test "should update seatcategory" do
    patch :update, id: @seatcategory, seatcategory: { name: @seatcategory.name }
    assert_redirected_to seatcategory_path(assigns(:seatcategory))
  end

  test "should destroy seatcategory" do
    assert_difference('Seatcategory.count', -1) do
      delete :destroy, id: @seatcategory
    end

    assert_redirected_to seatcategories_path
  end
end
