# Sample application tests without VCR
#
require_relative './test_helper'

describe Person do

  before do
    @mfojtik = Person.new('mfojtik')
  end

  it 'must include Marek Mahut in the list of followers' do
    @mfojtik.followers.must_include 'Marek Mahut'
  end

end
