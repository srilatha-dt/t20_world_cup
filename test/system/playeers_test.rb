require "application_system_test_case"

class PlayeersTest < ApplicationSystemTestCase
  setup do
    @playeer = playeers(:one)
  end

  test "visiting the index" do
    visit playeers_url
    assert_selector "h1", text: "Playeers"
  end

  test "should create playeer" do
    visit playeers_url
    click_on "New playeer"

    fill_in "Age", with: @playeer.age
    fill_in "Description", with: @playeer.description
    check "Is active" if @playeer.is_active
    check "Is captain" if @playeer.is_captain
    fill_in "Name", with: @playeer.name
    fill_in "Position", with: @playeer.position
    fill_in "Role", with: @playeer.role
    fill_in "Team", with: @playeer.team_id
    click_on "Create Playeer"

    assert_text "Playeer was successfully created"
    click_on "Back"
  end

  test "should update Playeer" do
    visit playeer_url(@playeer)
    click_on "Edit this playeer", match: :first

    fill_in "Age", with: @playeer.age
    fill_in "Description", with: @playeer.description
    check "Is active" if @playeer.is_active
    check "Is captain" if @playeer.is_captain
    fill_in "Name", with: @playeer.name
    fill_in "Position", with: @playeer.position
    fill_in "Role", with: @playeer.role
    fill_in "Team", with: @playeer.team_id
    click_on "Update Playeer"

    assert_text "Playeer was successfully updated"
    click_on "Back"
  end

  test "should destroy Playeer" do
    visit playeer_url(@playeer)
    click_on "Destroy this playeer", match: :first

    assert_text "Playeer was successfully destroyed"
  end
end
