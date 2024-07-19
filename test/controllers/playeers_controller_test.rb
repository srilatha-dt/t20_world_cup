require "test_helper"

class PlayeersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playeer = playeers(:one)
  end

  test "should get index" do
    get playeers_url
    assert_response :success
  end

  test "should get new" do
    get new_playeer_url
    assert_response :success
  end

  test "should create playeer" do
    assert_difference("Playeer.count") do
      post playeers_url, params: { playeer: { age: @playeer.age, description: @playeer.description, is_active: @playeer.is_active, is_captain: @playeer.is_captain, name: @playeer.name, position: @playeer.position, role: @playeer.role, team_id: @playeer.team_id } }
    end

    assert_redirected_to playeer_url(Playeer.last)
  end

  test "should show playeer" do
    get playeer_url(@playeer)
    assert_response :success
  end

  test "should get edit" do
    get edit_playeer_url(@playeer)
    assert_response :success
  end

  test "should update playeer" do
    patch playeer_url(@playeer), params: { playeer: { age: @playeer.age, description: @playeer.description, is_active: @playeer.is_active, is_captain: @playeer.is_captain, name: @playeer.name, position: @playeer.position, role: @playeer.role, team_id: @playeer.team_id } }
    assert_redirected_to playeer_url(@playeer)
  end

  test "should destroy playeer" do
    assert_difference("Playeer.count", -1) do
      delete playeer_url(@playeer)
    end

    assert_redirected_to playeers_url
  end
end
