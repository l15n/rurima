# Somemodel.conditions => Array or nil
# target => given parameter (must be symbol)

require 'ostruct'

class SomeModel
  def self.where(options)
    [
      OpenStruct.new(conditions: [1, 2], bar: 2, grok: 9, id: 1, name: 'hello'),
      OpenStruct.new(conditions: nil, bar: 0, grok: 1, id: 2, name: 'goodbye'),
      OpenStruct.new(conditions: [2, 3, 4], bar: 8, grok: 3, id: 5, name: 'wassup'),
      OpenStruct.new(conditions: [3, 4], bar: 8, grok: 3, id: 5, name: 'wassup')
    ]
  end
end

def original(target)
  result = []
  records = SomeModel.where(some_flag: true)
  records.each do |r|
    if !r.conditions
      result << r
    elsif r.conditions.include?(target)
      result << r
    end
  end
  result
end

def filter_conditions(target)
  records = SomeModel.where(some_flag: true)
  records.select {|r| !r.conditions || r.conditions.include?(target)}
end
