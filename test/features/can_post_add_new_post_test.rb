require "test_helper"

class CanPostAddNewPostTest < Capybara::Rails::TestCase
  test "post a new entry" do
    visit root_path
    click_link "Add New Post"
    fill_in "Title", with: "Best Tacos in HTown"
    fill_in "Body", with: "La Reynera...."
    click_button "Create Post"

    assert_content page, "Best Tacos in HTown"
  end
end
