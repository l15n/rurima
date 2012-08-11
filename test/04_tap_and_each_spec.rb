require 'minitest/spec'
require 'minitest/autorun'

require_relative '../enumerable/04_tap_and_each'

describe "Problem 04: Tap and Each" do
  it "should give the same result as original" do
    build_record_by_type(ARRAY).must_equal(original(ARRAY))
  end
end
