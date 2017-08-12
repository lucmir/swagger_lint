require "./lib/swagger_lint.rb"
require "test/unit"

class TestSwaggerLinter < Test::Unit::TestCase

  def test_sample
    assert_equal(4, 2+2)
  end

end
