require 'test_helper'

class PoetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poet = poets(:one)
  end

  test "should get index" do
    get poets_url
    assert_response :success
  end

  test "should get new" do
    get new_poet_url
    assert_response :success
  end

  test "should create poet" do
    assert_difference('Poet.count') do
      post poets_url, params: { poet: { name: @poet.name } }
    end

    assert_redirected_to poet_url(Poet.last)
  end

  test "should show poet" do
    get poet_url(@poet)
    assert_response :success
  end

  test "should get edit" do
    get edit_poet_url(@poet)
    assert_response :success
  end

  test "should update poet" do
    patch poet_url(@poet), params: { poet: { name: @poet.name } }
    assert_redirected_to poet_url(@poet)
  end

  test "should destroy poet" do
    assert_difference('Poet.count', -1) do
      delete poet_url(@poet)
    end

    assert_redirected_to poets_url
  end
end
