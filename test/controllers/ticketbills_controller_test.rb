require 'test_helper'

class TicketbillsControllerTest < ActionController::TestCase
  setup do
    @ticketbill = ticketbills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ticketbills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ticketbill" do
    assert_difference('Ticketbill.count') do
      post :create, ticketbill: { departure_date: @ticketbill.departure_date, id_customer: @ticketbill.id_customer, id_employee: @ticketbill.id_employee, id_ticket: @ticketbill.id_ticket, itinerary_id: @ticketbill.itinerary_id }
    end

    assert_redirected_to ticketbill_path(assigns(:ticketbill))
  end

  test "should show ticketbill" do
    get :show, id: @ticketbill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ticketbill
    assert_response :success
  end

  test "should update ticketbill" do
    patch :update, id: @ticketbill, ticketbill: { departure_date: @ticketbill.departure_date, id_customer: @ticketbill.id_customer, id_employee: @ticketbill.id_employee, id_ticket: @ticketbill.id_ticket, itinerary_id: @ticketbill.itinerary_id }
    assert_redirected_to ticketbill_path(assigns(:ticketbill))
  end

  test "should destroy ticketbill" do
    assert_difference('Ticketbill.count', -1) do
      delete :destroy, id: @ticketbill
    end

    assert_redirected_to ticketbills_path
  end
end
