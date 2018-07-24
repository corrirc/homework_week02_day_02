require('minitest/autorun')
require('minitest/rg')

require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class FishTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Salmon")
  end

  def test_get_name()
    assert_equal("Salmon", @fish1.name)
  end




















end
