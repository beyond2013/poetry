require 'test_helper'

class CoupletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @couplet = couplets(:one)
  end

  test "should get index" do
    get couplets_url
    assert_response :success
  end

  test "should get new" do
    get new_couplet_url
    assert_response :success
  end

  test "should create couplet" do
    assert_difference('Couplet.count') do
      post couplets_url, params: { couplet: { couplet: @couplet.couplet, poet_id: @couplet.poet_id } }
    end

    assert_redirected_to couplet_url(Couplet.last)
  end

  test "should show couplet" do
    get couplet_url(@couplet)
    assert_response :success
  end

  test "should get edit" do
    get edit_couplet_url(@couplet)
    assert_response :success
  end

  test "should update couplet" do
    patch couplet_url(@couplet), params: { couplet: { couplet: @couplet.couplet, poet_id: @couplet.poet_id } }
    assert_redirected_to couplet_url(@couplet)
  end

  test "should destroy couplet" do
    assert_difference('Couplet.count', -1) do
      delete couplet_url(@couplet)
    end

    assert_redirected_to couplets_url
  end
end
