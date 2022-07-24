require "test_helper"

class Public::CartItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_cart_items_show_url
    assert_response :success
  end
end
