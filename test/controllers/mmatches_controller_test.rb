require "test_helper"

class MmatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mmatch = mmatches(:one)
  end

  test "should get index" do
    get mmatches_url
    assert_response :success
  end

  test "should get new" do
    get new_mmatch_url
    assert_response :success
  end

  test "should create mmatch" do
    assert_difference("Mmatch.count") do
      post mmatches_url, params: { mmatch: {  } }
    end

    assert_redirected_to mmatch_url(Mmatch.last)
  end

  test "should show mmatch" do
    get mmatch_url(@mmatch)
    assert_response :success
  end

  test "should get edit" do
    get edit_mmatch_url(@mmatch)
    assert_response :success
  end

  test "should update mmatch" do
    patch mmatch_url(@mmatch), params: { mmatch: {  } }
    assert_redirected_to mmatch_url(@mmatch)
  end

  test "should destroy mmatch" do
    assert_difference("Mmatch.count", -1) do
      delete mmatch_url(@mmatch)
    end

    assert_redirected_to mmatches_url
  end
end
