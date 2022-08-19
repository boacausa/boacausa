require "test_helper"

class OrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization = organizations(:one)
  end

  test "should get index" do
    get organizations_url
    assert_response :success
  end

  test "should get new" do
    get new_organization_url
    assert_response :success
  end

  test "should create organization" do
    assert_difference("Organization.count") do
      post organizations_url, params: {organization: {active: @organization.active, address1: @organization.address1, address2: @organization.address2, city: @organization.city, date_start: @organization.date_start, deposit_description: @organization.deposit_description, description: @organization.description, email: @organization.email, name: @organization.name, phone_number1: @organization.phone_number1, phone_number2: @organization.phone_number2, registration: @organization.registration, state: @organization.state, transparency_doc: @organization.transparency_doc, website: @organization.website, zipcode: @organization.zipcode}}
    end

    assert_redirected_to organization_url(Organization.last)
  end

  test "should show organization" do
    get organization_url(@organization)
    assert_response :success
  end

  test "should get edit" do
    get edit_organization_url(@organization)
    assert_response :success
  end

  test "should update organization" do
    patch organization_url(@organization), params: {organization: {active: @organization.active, address1: @organization.address1, address2: @organization.address2, city: @organization.city, date_start: @organization.date_start, deposit_description: @organization.deposit_description, description: @organization.description, email: @organization.email, name: @organization.name, phone_number1: @organization.phone_number1, phone_number2: @organization.phone_number2, registration: @organization.registration, state: @organization.state, transparency_doc: @organization.transparency_doc, website: @organization.website, zipcode: @organization.zipcode}}
    assert_redirected_to organization_url(@organization)
  end

  test "should destroy organization" do
    assert_difference("Organization.count", -1) do
      delete organization_url(@organization)
    end

    assert_redirected_to organizations_url
  end
end
