require 'spec_helper'

class Izle
  attr_accessor :name

  def initalize(name)
    @name = name
  end
end

class WithCorrectSpelling
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

describe Initizle do
  it 'has a version number' do
    expect(Initizle::VERSION).not_to be nil
  end

  it 'uses a misspelling of initialize' do
    expect(Izle.new('myname').name).to eq 'myname'
  end

  it 'uses correct spelling of initialize' do
    expect(WithCorrectSpelling.new('myname').name).to eq 'myname'
  end
end
