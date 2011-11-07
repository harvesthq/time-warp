require 'date'

# Extend DateTime class to generate 'now' from modified Time.now
DateTime.class_eval do
  class << self

    def now
      Time.now.to_datetime
    end

  end
end
