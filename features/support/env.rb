require "appium_lib"
require "pry"

def caps
  { caps: {
    deviceName: "Pixel 6 Pro",
    platformName: "Android",
    app: (File.join(File.dirname(__FILE__ ),"PreciseUnitConversion.apk")),
    appPackage: "com.ba.universalconverter",
    appActivity: "MainConverterActivity",
    newCommandTimeout: "3600",

    appium_lib: {
      wait: 20,
      debug: false
      }
    }
  }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

def find_in_list(value)
  puts(value)
  find_element :uiautomator, "new UiScrollable(new UiSelector().scrollable(true))" +
    ".scrollIntoView(new UiSelector().text(\"#{value}\"))"
  # 3.times {Appium::TouchAction.new.swipe(start_x: 0.5,start_y: 0.2, end_x: 0.5, end_y: 0.8, duration: 600).perform }
  # until exists { find_element(xpath: "//android.widget.TextView[@text='#{value}']") } do
  #   # 3.times {Appium::TouchAction.new.swipe(start_x: 0.5,start_y: 0.8, end_x: 0.5, end_y: 0.4, duration: 1000).perform }
  # end
  find_element(xpath: "//android.widget.TextView[@text='#{value}']").click
  sleep 3
end