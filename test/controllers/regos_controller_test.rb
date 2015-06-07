require 'test_helper'

class RegosControllerTest < ActionController::TestCase
  setup do
    @rego = regos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:regos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rego" do
    assert_difference('Rego.count') do
      post :create, rego: { EndDate: @rego.EndDate, RegoLength: @rego.RegoLength, StartDate: @rego.StartDate }
    end

    assert_redirected_to rego_path(assigns(:rego))
  end

  test "should show rego" do
    get :show, id: @rego
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rego
    assert_response :success
  end

  test "should update rego" do
    patch :update, id: @rego, rego: { EndDate: @rego.EndDate, RegoLength: @rego.RegoLength, StartDate: @rego.StartDate }
    assert_redirected_to rego_path(assigns(:rego))
  end

  test "should destroy rego" do
    assert_difference('Rego.count', -1) do
      delete :destroy, id: @rego
    end

    assert_redirected_to regos_path
  end
end
