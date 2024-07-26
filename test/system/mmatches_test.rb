require "application_system_test_case"

class MmatchesTest < ApplicationSystemTestCase
  setup do
    @mmatch = mmatches(:one)
  end

  test "visiting the index" do
    visit mmatches_url
    assert_selector "h1", text: "Mmatches"
  end

  test "should create mmatch" do
    visit mmatches_url
    click_on "New mmatch"

    click_on "Create Mmatch"

    assert_text "Mmatch was successfully created"
    click_on "Back"
  end

  test "should update Mmatch" do
    visit mmatch_url(@mmatch)
    click_on "Edit this mmatch", match: :first

    click_on "Update Mmatch"

    assert_text "Mmatch was successfully updated"
    click_on "Back"
  end

  test "should destroy Mmatch" do
    visit mmatch_url(@mmatch)
    click_on "Destroy this mmatch", match: :first

    assert_text "Mmatch was successfully destroyed"
  end
end
