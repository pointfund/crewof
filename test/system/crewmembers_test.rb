require "application_system_test_case"

class CrewmembersTest < ApplicationSystemTestCase
  setup do
    @crewmember = crewmembers(:one)
  end

  test "visiting the index" do
    visit crewmembers_url
    assert_selector "h1", text: "Crewmembers"
  end

  test "creating a Crewmember" do
    visit crewmembers_url
    click_on "New Crewmember"

    fill_in "Address", with: @crewmember.address
    fill_in "Email", with: @crewmember.email
    fill_in "Name", with: @crewmember.name
    fill_in "Phone", with: @crewmember.phone
    click_on "Create Crewmember"

    assert_text "Crewmember was successfully created"
    click_on "Back"
  end

  test "updating a Crewmember" do
    visit crewmembers_url
    click_on "Edit", match: :first

    fill_in "Address", with: @crewmember.address
    fill_in "Email", with: @crewmember.email
    fill_in "Name", with: @crewmember.name
    fill_in "Phone", with: @crewmember.phone
    click_on "Update Crewmember"

    assert_text "Crewmember was successfully updated"
    click_on "Back"
  end

  test "destroying a Crewmember" do
    visit crewmembers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Crewmember was successfully destroyed"
  end
end
