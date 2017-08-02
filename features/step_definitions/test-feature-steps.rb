Given(/^I have a browser$/) do
    assert(@browser)
end

When(/^I visit google$/) do
    visit GooglePage
end

Then(/^it should have a title "([^"]*)"$/) do |arg1|
    google_page = GooglePage.new(@browser)
    assert_equal(google_page.title.downcase, arg1.to_s.downcase)
end