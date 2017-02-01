require 'test_helper'

class DatetimesControllerTest < ActionController::TestCase
  setup do
    @datetime = datetimes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datetimes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datetime" do
    assert_difference('Datetime.count') do
      post :create, datetime: { enddate: @datetime.enddate, lastname: @datetime.lastname, name: @datetime.name, startdate: @datetime.startdate }
    end

    assert_redirected_to datetime_path(assigns(:datetime))
  end

  test "should show datetime" do
    get :show, id: @datetime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datetime
    assert_response :success
  end

  test "should update datetime" do
    patch :update, id: @datetime, datetime: { enddate: @datetime.enddate, lastname: @datetime.lastname, name: @datetime.name, startdate: @datetime.startdate }
    assert_redirected_to datetime_path(assigns(:datetime))
  end

  test "should destroy datetime" do
    assert_difference('Datetime.count', -1) do
      delete :destroy, id: @datetime
    end

    assert_redirected_to datetimes_path
  end
end
