require "guard"
require "guard/guard"

module Guard
  class Isim < Guard
    autoload :Runner, 'guard/isim/runner'
    
    # guard hooks
    def initialize(watchers = [], options = {})
      super
      @options = {
        :reload_period => 0
      }
    end

    def stop
      Runner.quit
    end

    def run_on_changes(paths)
      sleep options[:reload_period]
      Runner.reload paths
    end
  end
end
