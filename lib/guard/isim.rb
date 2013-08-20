require "guard"
require "guard/guard"

module Guard
  class Isim < Guard
    autoload :Runner, 'guard/isim/runner'
    
    # guard hooks
    def initialize(watchers = [], options = {})
      super
      @options = {
        :quit_on_stop  => false
        :reload_period => 0
      }
    end

    def stop
      if options[:quit_on_stop]
        Runner.quit
      end
    end

    def run_on_changes(paths)
      sleep options[:reload_period]
      Runner.reload paths
    end
  end
end
