require 'test_helper'

class IinvoicesControllerTest < ActionController::TestCase
  setup do
    @iinvoice = iinvoices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iinvoices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iinvoice" do
    assert_difference('Iinvoice.count') do
      post :create, iinvoice: { company: @iinvoice.company, date: @iinvoice.date, salesperson: @iinvoice.salesperson, tax: @iinvoice.tax }
    end

    assert_redirected_to iinvoice_path(assigns(:iinvoice))
  end

  test "should show iinvoice" do
    get :show, id: @iinvoice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iinvoice
    assert_response :success
  end

  test "should update iinvoice" do
    patch :update, id: @iinvoice, iinvoice: { company: @iinvoice.company, date: @iinvoice.date, salesperson: @iinvoice.salesperson, tax: @iinvoice.tax }
    assert_redirected_to iinvoice_path(assigns(:iinvoice))
  end

  test "should destroy iinvoice" do
    assert_difference('Iinvoice.count', -1) do
      delete :destroy, id: @iinvoice
    end

    assert_redirected_to iinvoices_path
  end
end
