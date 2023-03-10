Given('I land on home screen') do
  find_element(id:"action_search")
  find_element(id:"select_unit_spinner_arrow")
end

When('I press on menu icon') do
  find_element(accessibility_id: "Open navigation drawer").click
end

Then('I should see left side menu') do
  find_element(xpath: "//*[contains(@text,'Unit Converter')]")
end

When('I press on My Conversions button') do
  find_element(xpath: "//*[contains(@text,'My conversions')]").click
end

Then('I land on My Conversions screen') do
  find_element(xpath: "//*[contains(@text,'My conversions')]")
end
