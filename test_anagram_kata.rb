require_relative "anagram_kata"
require "test/unit"

class TestAnagramKata < Test::Unit::TestCase

  def test_nomatch
    assert_equal([], AnagramKata.new("ab").on("") )
  end

  def test_single_match
    assert_equal([0], AnagramKata.new("ab").on("ba") )
    assert_equal([1], AnagramKata.new("a").on("ba") )
    assert_equal([0], AnagramKata.new("a").on("ab") )
  end

  def test_multiple_match
    assert_equal([0,3,4], AnagramKata.new("ab").on("abxaba") )
    assert_equal([0,1,2], AnagramKata.new("a").on("aaa") )
    assert_equal([0,20], AnagramKata.new("cai").on("iacccccccciiiiiiiiiiica") )
  end
end
