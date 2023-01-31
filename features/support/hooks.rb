Before do
  $driver.start_driver
end

After do |scenario|
  puts "After hook is executed"

  if scenario.failed?
    if !File.directory?("screenshots")
      FileUtils.mkdir_p("screenshots")
    end

    # use datetime to have unique screenshots name
    time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
    screenshot_name = time_stamp + ".png"
    screenshot_file = File.join("screenshots", screenshot_name)
    $driver.screenshot(screenshot_file)
    #embed("#{screenshot_file}", "image/png") # deprecated as undefined method
    attach("#{screenshot_file}", "image/png")
  end

  # quit driver before every scenario
  sleep 3
  $driver.driver_quit
end