require 'test_helper'

class ArtCraftsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get art_crafts_show_url
    assert_response :success
  end

end
