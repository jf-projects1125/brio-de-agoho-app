require "application_system_test_case"

class Admin::SalespeopleTest < ApplicationSystemTestCase
  setup do
    @admin_salesperson = admin_salespeople(:one)
  end

  test "visiting the index" do
    visit admin_salespeople_url
    assert_selector "h1", text: "Salespeople"
  end

  test "should create salesperson" do
    visit admin_salespeople_url
    click_on "New salesperson"

    fill_in "Name", with: @admin_salesperson.name
    check "Status" if @admin_salesperson.status
    click_on "Create Salesperson"

    assert_text "Salesperson was successfully created"
    click_on "Back"
  end

  test "should update Salesperson" do
    visit admin_salesperson_url(@admin_salesperson)
    click_on "Edit this salesperson", match: :first

    fill_in "Name", with: @admin_salesperson.name
    check "Status" if @admin_salesperson.status
    click_on "Update Salesperson"

    assert_text "Salesperson was successfully updated"
    click_on "Back"
  end

  test "should destroy Salesperson" do
    visit admin_salesperson_url(@admin_salesperson)
    click_on "Destroy this salesperson", match: :first

    assert_text "Salesperson was successfully destroyed"
  end
end
