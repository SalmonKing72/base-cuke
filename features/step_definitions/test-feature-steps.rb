Given(/^I have a browser$/) do
    assert($driver)
end

When(/^I visit google$/) do
    $driver.get 'http://google.com'
end

Then(/^it should have a title "([^"]*)"$/) do |arg1|
    title = $driver.title
    assert_equal(title.downcase, arg1.to_s.downcase)
end