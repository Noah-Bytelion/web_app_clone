require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "Ruby on Rails Tutoial Sample App"
    assert_equal full_title("Help"), "Ruby on Rails Tutoial Sample App"
  end
end
