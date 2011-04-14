require File.join File.dirname(__FILE__), 'core_ext'

module Test # :nodoc:
  module Unit # :nodoc:
    class TestCase

      ##
      # Time warp to the specified time for the duration of the passed block.
      def pretend_now_is(*args)
        Time.testing_offset = Time.now - time_from(*args)
        if block_given?
          begin
            yield
          ensure
            reset_to_real_time
          end
        end
      end
      
      ##
      # Reset to real time.
      def reset_to_real_time
        Time.testing_offset = 0
      end
    
    private
    
      def time_from(*args)
        return args[0] if 1 == args.size && args[0].is_a?(Time)
        return args[0].to_time if 1 == args.size && args[0].respond_to?(:to_time)  # For example, if it's a Date.
        Time.utc(*args)
      end

    end
  end
end