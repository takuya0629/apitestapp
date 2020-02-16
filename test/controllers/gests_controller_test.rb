require 'test_helper'

class GestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gest = gests(:one)
  end

  test "should get index" do
    get gests_url
    assert_response :success
  end

  test "should get new" do
    get new_gest_url
    assert_response :success
  end

  test "should create gest" do
    assert_difference('Gest.count') do
      post gests_url, params: { gest: { body: @gest.body, name: @gest.name } }
    end

    assert_redirected_to gest_url(Gest.last)
  end

  test "should show gest" do
    get gest_url(@gest)
    assert_response :success
  end

  test "should get edit" do
    get edit_gest_url(@gest)
    assert_response :success
  end

  test "should update gest" do
    patch gest_url(@gest), params: { gest: { body: @gest.body, name: @gest.name } }
    assert_redirected_to gest_url(@gest)
  end

  test "should destroy gest" do
    assert_difference('Gest.count', -1) do
      delete gest_url(@gest)
    end

    assert_redirected_to gests_url
  end
end
