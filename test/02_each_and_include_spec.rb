require 'minitest/spec'
require 'minitest/autorun'

require_relative '../enumerable/02_each_and_include'

describe "Problem 02: Each and Include" do

  it "gives same result as original" do
    target = 2
    filter_conditions(target).must_equal(original(target))
  end
end
