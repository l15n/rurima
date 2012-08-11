require 'minitest/spec'
require 'minitest/autorun'

require_relative '../enumerable/01_shuffle'

describe "Problem 01: Shuffle" do
  before do
    @members = %w[A B C D E F G H I J]
    @shuffled = shuffle(@members)
  end

  it "should return two arrays" do
    @shuffled[0].must_be_instance_of(Array)
    @shuffled[1].must_be_instance_of(Array)
  end

  it "should return different result each time" do
    shuffle(@members).wont_equal(@shuffled)
  end

  it "should have the same total elements" do
    @members.sort.must_equal(@shuffled.flatten.sort)
  end
end
