require 'ostruct'

class Hash
  def to_hash
    self
  end
end

class SomeModel
  def self.where(options)
    [
      {foo: 1, bar: 2, grok: 9, id: 1, name: 'hello'},
      {foo: 4, bar: 0, grok: 1, id: 2, name: 'goodbye'},
      {foo: 2, bar: 8, grok: 3, id: 5, name: 'wassup'}
    ]
  end
end

ARRAY = [:foo, :bar, :hoge, :piyo]

def original(types)
  {}.tap do |result|
    types.each do |type| 
      records = SomeModel.where(type: type)
      result[type] = [].tap do |record_array|
        records.each do |record|
          r = record.to_hash
          record_array.push r
        end
      end
    end
  end
end

def build_record_by_type(types)
  types.each_with_object({}) {|type, hash|
    records = SomeModel.where(type: type)
    hash[type] = records.map {|r| r.to_hash}
  }
end
