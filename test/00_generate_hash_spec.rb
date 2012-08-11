require 'minitest/spec'
require 'minitest/autorun'

require_relative '../enumerable/00_generate_hash'
describe Array do
  it "(1) should build hash from Array of key, values" do
    expected = { 'key1' => 'value1', 'key2' => 'value2', 'key3' => 'value3'}
    kv = ['key1', 'value1', 'key2', 'value2', 'key3', 'value3']
    sew_array(kv).must_equal(expected)
  end

  it "(2)" do
    expected = { 'key1' => 'value1', 'key2' => 'value2', 'key3' => 'value3'}
    kvs = [['key1', 'value1'], ['key2', 'value2'], ['key3', 'value3']]
    sew_nested_array(kvs).must_equal(expected)
  end

  it "(3)" do
    expected = { 'key1' => 'value1', 'key2' => 'value2', 'key3' => 'value3'}
    keys = ['key1', 'key2', 'key3']
    values =  ['value1', 'value2', 'value3']
    zip_arrays(keys, values).must_equal(expected)
  end
end
