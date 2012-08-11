# @option is parsed query parameter
# e.g. { 'foo' => 'bar', 'hoge' => 'piyo'

def original(options)
  {}.tap do |hash|
    options.map do |k, v|
      hash[k.to_s.camelize(:lower)] = v
    end
  end
end

def normalize_params(options)
  options.keys.each_with_object({}) {|k, hash|
    hash[k.to_s.camelize(:lower)] = options[k]
  }
end
