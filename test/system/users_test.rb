require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    fill_in "Address locatity", with: @user.address_locatity
    fill_in "Address region", with: @user.address_region
    fill_in "Code", with: @user.code
    fill_in "Email", with: @user.email
    fill_in "First name", with: @user.first_name
    fill_in "Handicap", with: @user.handicap
    fill_in "Last name", with: @user.last_name
    fill_in "Postal", with: @user.postal
    fill_in "Street address", with: @user.street_address
    fill_in "User type", with: @user.user_type_id
    fill_in "Username", with: @user.username
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    fill_in "Address locatity", with: @user.address_locatity
    fill_in "Address region", with: @user.address_region
    fill_in "Code", with: @user.code
    fill_in "Email", with: @user.email
    fill_in "First name", with: @user.first_name
    fill_in "Handicap", with: @user.handicap
    fill_in "Last name", with: @user.last_name
    fill_in "Postal", with: @user.postal
    fill_in "Street address", with: @user.street_address
    fill_in "User type", with: @user.user_type_id
    fill_in "Username", with: @user.username
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end
