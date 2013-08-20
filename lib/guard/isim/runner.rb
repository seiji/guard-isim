module Guard
  class Isim
    module Runner
      class << self
        def reload(path)
          simulator_reload_browser
        end

        def quit
          simulator_quit
        end
        
        private
        def simulator_quit
          %x{osascript<<APPLESCRIPT
             application "iPhone Simulator" quit
          APPLESCRIPT}
          UI.info "iOS Simulator quitted."
        end

        def simulator_reload_browser
          %x{osascript<<APPLESCRIPT
tell application "System Events"
  tell process "iPhone Simulator"
    tell window 1
      click button "Reload"
    end tell
  end tell
end tell
          APPLESCRIPT}
          UI.info "Browser Reloaded."
        end
      end
    end
  end
end
  
