require "test_helper"

class Admin::SalespeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_salesperson = admin_salespeople(:one)
  end

  test "should get index" do
    get admin_salespeople_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_salesperson_url
    assert_response :success
  end

  test "should create admin_salesperson" do
    assert_difference("Admin::Salesperson.count") do
      post admin_salespeople_url, params: { admin_salesperson: { name: @admin_salesperson.name, status: @admin_salesperson.status } }
    end

    assert_redirected_to admin_salesperson_url(Admin::Salesperson.last)
  end

  test "should show admin_salesperson" do
    get admin_salesperson_url(@admin_salesperson)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_salesperson_url(@admin_salesperson)
    assert_response :success
  end

  test "should update admin_salesperson" do
    patch admin_salesperson_url(@admin_salesperson), params: { admin_salesperson: { name: @admin_salesperson.name, status: @admin_salesperson.status } }
    assert_redirected_to admin_salesperson_url(@admin_salesperson)
  end

  test "should destroy admin_salesperson" do
    assert_difference("Admin::Salesperson.count", -1) do
      delete admin_salesperson_url(@admin_salesperson)
    end

    assert_redirected_to admin_salespeople_url
  end
end
