module Test # :nodoc: all
  module Unit
    class TestCase

      ##
      # Time warp to the specified time for the duration of the passed block.
      def pretend_now_is(time)
        begin
          Time.testing_offset = Time.now - time
          yield
        ensure
          Time.testing_offset = 0
        end
      end

    end
  end
end