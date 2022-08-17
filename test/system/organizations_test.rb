require "application_system_test_case"

class OrganizationsTest < ApplicationSystemTestCase
  setup do
    @organization = organizations(:one)
  end

  test "visiting the index" do
    visit organizations_url
    assert_selector "h1", text: "Organizations"
  end

  test "should create organization" do
    visit organizations_url
    click_on "New organization"

    check "Active" if @organization.active
    fill_in "Address1", with: @organization.address1
    fill_in "Address2", with: @organization.address2
    fill_in "City", with: @organization.city
    fill_in "Date start", with: @organization.date_start
    fill_in "Deposit description", with: @organization.deposit_description
    fill_in "Description", with: @organization.description
    fill_in "Email", with: @organization.email
    fill_in "Name", with: @organization.name
    fill_in "Phone number1", with: @organization.phone_number1
    fill_in "Phone number2", with: @organization.phone_number2
    fill_in "Registration", with: @organization.registration
    fill_in "State", with: @organization.state
    fill_in "Transparency doc", with: @organization.transparency_doc
    fill_in "Website", with: @organization.website
    fill_in "Zipcode", with: @organization.zipcode
    click_on "Create Organization"

    assert_text "Organization was successfully created"
    click_on "Back"
  end

  test "should update Organization" do
    visit organization_url(@organization)
    click_on "Edit this organization", match: :first

    check "Active" if @organization.active
    fill_in "Address1", with: @organization.address1
    fill_in "Address2", with: @organization.address2
    fill_in "City", with: @organization.city
    fill_in "Date start", with: @organization.date_start
    fill_in "Deposit description", with: @organization.deposit_description
    fill_in "Description", with: @organization.description
    fill_in "Email", with: @organization.email
    fill_in "Name", with: @organization.name
    fill_in "Phone number1", with: @organization.phone_number1
    fill_in "Phone number2", with: @organization.phone_number2
    fill_in "Registration", with: @organization.registration
    fill_in "State", with: @organization.state
    fill_in "Transparency doc", with: @organization.transparency_doc
    fill_in "Website", with: @organization.website
    fill_in "Zipcode", with: @organization.zipcode
    click_on "Update Organization"

    assert_text "Organization was successfully updated"
    click_on "Back"
  end

  test "should destroy Organization" do
    visit organization_url(@organization)
    click_on "Destroy this organization", match: :first

    assert_text "Organization was successfully destroyed"
  end
end
