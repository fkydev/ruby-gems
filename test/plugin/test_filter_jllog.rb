require "helper"
require "fluent/plugin/filter_jllog.rb"

class JllogFilterTest < Test::Unit::TestCase
  setup do
    Fluent::Test.setup
  end

  test "failure" do
    flunk
  end

  private

  def create_driver(conf)
    Fluent::Test::Driver::Filter.new(Fluent::Plugin::JllogFilter).configure(conf)
  end
end
