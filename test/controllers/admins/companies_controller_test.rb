require 'test_helper'

class Admins::CompaniesControllerTest < ActionController::TestCase
  setup do
    @admins_company = admins_companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admins_companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admins_company" do
    assert_difference('Admins::Company.count') do
      post :create, admins_company: {  }
    end

    assert_redirected_to admins_company_path(assigns(:admins_company))
  end

  test "should show admins_company" do
    get :show, id: @admins_company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admins_company
    assert_response :success
  end

  test "should update admins_company" do
    patch :update, id: @admins_company, admins_company: {  }
    assert_redirected_to admins_company_path(assigns(:admins_company))
  end

  test "should destroy admins_company" do
    assert_difference('Admins::Company.count', -1) do
      delete :destroy, id: @admins_company
    end

    assert_redirected_to admins_companies_path
  end
end
