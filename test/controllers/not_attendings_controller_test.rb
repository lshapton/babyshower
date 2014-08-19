require 'test_helper'

class NotAttendingsControllerTest < ActionController::TestCase
  setup do
    @not_attending = not_attendings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:not_attendings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create not_attending" do
    assert_difference('NotAttending.count') do
      post :create, not_attending: { email: @not_attending.email, first_name: @not_attending.first_name, last_name: @not_attending.last_name }
    end

    assert_redirected_to not_attending_path(assigns(:not_attending))
  end

  test "should show not_attending" do
    get :show, id: @not_attending
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @not_attending
    assert_response :success
  end

  test "should update not_attending" do
    patch :update, id: @not_attending, not_attending: { email: @not_attending.email, first_name: @not_attending.first_name, last_name: @not_attending.last_name }
    assert_redirected_to not_attending_path(assigns(:not_attending))
  end

  test "should destroy not_attending" do
    assert_difference('NotAttending.count', -1) do
      delete :destroy, id: @not_attending
    end

    assert_redirected_to not_attendings_path
  end
end
