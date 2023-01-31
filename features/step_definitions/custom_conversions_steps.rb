Then(/^I press on Create your first conversion button$/) do
  find_element(id: "btn_new_custom_conversion").click
end

Then(/^I type "([^"]*)" as custom conversion name$/) do |name|
  wait = Selenium::WebDriver::Wait.new(timeout: 10)
  element = wait.until { driver.find_element(id: "edit_custom_conversion_category_name") }
  element.send_keys(name)
end

When(/^I press on New unit button$/) do
  find_element(id: "btn_new_custom_unit").click
end

Then(/^I type "([^"]*)" as unit name$/) do |unit_name|
  wait = Selenium::WebDriver::Wait.new(timeout: 10)
  element = wait.until { driver.find_element(id: "edit_custom_conversion_unit_dtls_name") }
  element.send_keys(unit_name)
end


Then(/^I type "([^"]*)" as unit symbol$/) do |symbol_name|
  find_element(id: "edit_custom_conversion_unit_dtls_symbol").send_keys(symbol_name)
end

Then(/^I type "([^"]*)" as unit value$/) do |unit_value|
  find_element(id: "edit_custom_conversion_unit_dtls_value").send_keys(unit_value)
end

Then(/^I press submit checkmark on Custom conversions screen$/) do
  find_element(id: "action_confirm_custom_unit").click
end

When(/^I press on OK button on Custom conversions screen$/) do
  find_element(id: "btn_custom_conversion_details_ok").click
end

Then(/^I verify "([^"]*)" added to Custom conversions list$/) do |conversion_name|
  find_element(xpath: "//*[contains(@text, #{conversion_name})]")
end
