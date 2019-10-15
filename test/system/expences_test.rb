require "application_system_test_case"

class ExpencesTest < ApplicationSystemTestCase
  setup do
    @expence = expences(:one)
  end

  test "visiting the index" do
    visit expences_url
    assert_selector "h1", text: "Expences"
  end

  test "creating a Expence" do
    visit expences_url
    click_on "New Expence"

    fill_in "Amount", with: @expence.amount
    fill_in "Category", with: @expence.category_id
    fill_in "Date", with: @expence.date
    fill_in "Description", with: @expence.description
    fill_in "Invoice", with: @expence.invoice
    check "Inword" if @expence.inword
    fill_in "Payment mode", with: @expence.payment_mode_id
    fill_in "User", with: @expence.user_id
    click_on "Create Expence"

    assert_text "Expence was successfully created"
    click_on "Back"
  end

  test "updating a Expence" do
    visit expences_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @expence.amount
    fill_in "Category", with: @expence.category_id
    fill_in "Date", with: @expence.date
    fill_in "Description", with: @expence.description
    fill_in "Invoice", with: @expence.invoice
    check "Inword" if @expence.inword
    fill_in "Payment mode", with: @expence.payment_mode_id
    fill_in "User", with: @expence.user_id
    click_on "Update Expence"

    assert_text "Expence was successfully updated"
    click_on "Back"
  end

  test "destroying a Expence" do
    visit expences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expence was successfully destroyed"
  end
end
