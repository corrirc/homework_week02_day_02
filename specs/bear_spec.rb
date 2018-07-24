require('minitest/autorun')
require('minitest/rg')

require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class BearTest < MiniTest::Test

  def setup()
      @bear = Bear.new("Ted", "Grizzly")
      @fish2 = Fish.new("Pollock")
      @fish3 = Fish.new("Swordfish")
      @river = River.new("River_Irvine", [@fish1, @fish2, @fish3])
  end

  def test_get_name()
    assert_equal("Ted", @bear.name)
  end

  def test_bear_type()
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_stomach_is_empty()
    assert_equal([], @bear.stomach)
  end

  def test_eats_fish()
    @bear.eats_fish(@river, @fish1)
    assert_equal([@fish1], @bear.stomach)
    @river.remove_fish(@fish1)
    assert_equal([@fish2, @fish3], @river.fish_in_river())
  end

  def test_bear_roar()
    assert_equal("ROAR!", @bear.roar())
  end

end
