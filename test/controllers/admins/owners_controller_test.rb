require 'test_helper'

class Admins::OwnersControllerTest < ActionController::TestCase
  setup do
    @admins_owner = admins_owners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admins_owners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admins_owner" do
    assert_difference('Admins::Owner.count') do
      post :create, admins_owner: {  }
    end

    assert_redirected_to admins_owner_path(assigns(:admins_owner))
  end

  test "should show admins_owner" do
    get :show, id: @admins_owner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admins_owner
    assert_response :success
  end

  test "should update admins_owner" do
    patch :update, id: @admins_owner, admins_owner: {  }
    assert_redirected_to admins_owner_path(assigns(:admins_owner))
  end

  test "should destroy admins_owner" do
    assert_difference('Admins::Owner.count', -1) do
      delete :destroy, id: @admins_owner
    end

    assert_redirected_to admins_owners_path
  end
end
