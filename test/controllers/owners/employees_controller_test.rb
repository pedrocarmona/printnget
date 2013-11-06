require 'test_helper'

class Owners::EmployeesControllerTest < ActionController::TestCase
  setup do
    @owners_employee = owners_employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:owners_employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create owners_employee" do
    assert_difference('Owners::Employee.count') do
      post :create, owners_employee: { email: @owners_employee.email, given_name: @owners_employee.given_name, last_name: @owners_employee.last_name }
    end

    assert_redirected_to owners_employee_path(assigns(:owners_employee))
  end

  test "should show owners_employee" do
    get :show, id: @owners_employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @owners_employee
    assert_response :success
  end

  test "should update owners_employee" do
    patch :update, id: @owners_employee, owners_employee: { email: @owners_employee.email, given_name: @owners_employee.given_name, last_name: @owners_employee.last_name }
    assert_redirected_to owners_employee_path(assigns(:owners_employee))
  end

  test "should destroy owners_employee" do
    assert_difference('Owners::Employee.count', -1) do
      delete :destroy, id: @owners_employee
    end

    assert_redirected_to owners_employees_path
  end
end
