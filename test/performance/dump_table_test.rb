require 'test_helper'
require 'rails/performance_test_help'

class DumpTableTest < ActionDispatch::PerformanceTest
  # Refer to the documentation for all available options
  self.profile_options = { runs: 5, metrics: [:wall_time, :memory, :process_time, :objects] }

  test 'dump_table' do
    get '/dump_table/index'
  end
end
