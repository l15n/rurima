require 'minitest/spec'
require 'minitest/autorun'

require 'rubygems'
require 'active_support/core_ext'

require_relative '../enumerable/03_tap_and_map'

describe "Problem 03: Tap and Map" do
  before do
    @options = {:user_id => '123', :article => 'hogeworks', 'minimum_age' => '22'}
  end

  it "should work like the original method" do
    normalize_params(@options).must_equal(original(@options))
  end

  it "should convert normalize and camelize hash keys" do
    expected = {'userId' => '123', 'article' => 'hogeworks', 'minimumAge' => '22'}
    normalize_params(@options).must_equal(expected)
  end

end
