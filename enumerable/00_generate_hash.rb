# -*- coding: utf-8 -*-
# テーマ：配列からハッシュを作る

expected = { 'key1' => 'value1', 'key2' => 'value2', 'key3' => 'value3'}

# (1) keyとvalueが交互に並んだ配列から
kv = ['key1', 'value1', 'key2', 'value2', 'key3', 'value3']

def sew_array(kv)
  return Hash[*kv]
end

# (2) keyとvalueがペアになって並んだ配列から
kvs = [['key1', 'value1'], ['key2', 'value2'], ['key3', 'value3']]

def sew_nested_array(kvs)
  return Hash[kvs]
end

# (3) keyの配列とvalueの配列から
keys = ['key1', 'key2', 'key3']
values =  ['value1', 'value2', 'value3']

def zip_arrays(k, v)
  Hash[k.zip(v)]
end

