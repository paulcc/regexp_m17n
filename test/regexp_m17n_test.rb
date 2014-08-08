# encoding: utf-8
require 'minitest/autorun'
require_relative '../lib/regexp_m17n'

class RegexpTest < MiniTest::Unit::TestCase
  def test_non_empty_string
    Encoding.list.each do |enc|
      next if enc.name == "ISO-2022-JP-2"   # no converter exists
      next if enc.name == "UTF-7"           # no converter exists
      assert(RegexpM17N.non_empty?('.'.encode(enc)))
    end
  end
end
