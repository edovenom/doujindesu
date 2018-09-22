require 'test_helper'

class AlbumControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get album_index_url
    assert_response :success
  end

  test "should get show" do
    get album_show_url
    assert_response :success
  end

  test "should get edit" do
    get album_edit_url
    assert_response :success
  end

end
