require "test_helper"

class ManifacturersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manifacturer = manifacturers(:one)
  end

  test "should get index" do
    get manifacturers_url
    assert_response :success
  end

  test "should get new" do
    get new_manifacturer_url
    assert_response :success
  end

  test "should create manifacturer" do
    assert_difference("Manifacturer.count") do
      post manifacturers_url, params: { manifacturer: { name: @manifacturer.name } }
    end

    assert_redirected_to manifacturer_url(Manifacturer.last)
  end

  test "should show manifacturer" do
    get manifacturer_url(@manifacturer)
    assert_response :success
  end

  test "should get edit" do
    get edit_manifacturer_url(@manifacturer)
    assert_response :success
  end

  test "should update manifacturer" do
    patch manifacturer_url(@manifacturer), params: { manifacturer: { name: @manifacturer.name } }
    assert_redirected_to manifacturer_url(@manifacturer)
  end

  test "should destroy manifacturer" do
    assert_difference("Manifacturer.count", -1) do
      delete manifacturer_url(@manifacturer)
    end

    assert_redirected_to manifacturers_url
  end
end
