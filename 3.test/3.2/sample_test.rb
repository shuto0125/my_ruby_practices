require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    # assert_equal 期待する結果, テスト対象となる値や式
    assert_equal 'RUBY', 'ruby'.upcase
    assert_equal 'RUBY', 'ruby'.capitalize
    assert_equal 'RUBY', nil.upcase

  end
end