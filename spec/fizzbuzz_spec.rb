require 'rspec'
require 'spec_helper'
require_relative 'lib/fizzbuzz'

describe Fizzbuzz do
  # 1の場合は「1」
  it 'is 1' do
    fizzbuzz = Fizzbuzz.new
    expect(fizzbuzz.call(1)).to eq '1'
  end

  # 3で割れる場合は「Fizz」
  it 'is Fizz' do
    fizzbuzz = Fizzbuzz.new
    expect(fizzbuzz.call(3)).to eq 'Fizz'
  end

  # 5で割れる場合は「Buzz」
  it 'is Buzz' do
    fizzbuzz = Fizzbuzz.new
    expect(fizzbuzz.call(5)).to eq 'Buzz'
  end

  # 3or5で割れる場合は「FizzBuzz」
  it 'is FizzBuzz' do
    fizzbuzz = Fizzbuzz.new
    expect(fizzbuzz.call(15)).to eq 'FizzBuzz'
  end

end