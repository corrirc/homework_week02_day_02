require('minitest/autorun')
require('minitest/rg')

require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class RiverTest < MiniTest::Test

  def setup()
      @fish1 = Fish.new("Salmon")
      @fish2 = Fish.new("Pollock")
      @fish3 = Fish.new("Swordfish")
      @river = River.new("River_Irvine", [@fish1, @fish2, @fish3])
  end

  def test_get_name()
    assert_equal("River_Irvine", @river.name)
  end

  def test_fish_in_river
      # @river.remove_fish(@fish1)
      assert_equal([@fish1, @fish2, @fish3], @river.fish_in_river)
  end

  def test_remove_fish()
    @river.remove_fish(@fish1)
    assert_equal([@fish2, @fish3], @river.fish_in_river)
  end


  def test_fish_count()
    @river.remove_fish(@fish1)
    assert_equal(2, @river.fish_count)
  end


















end
