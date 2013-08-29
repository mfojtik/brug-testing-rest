# Sample application tests with VCR
#
require_relative './test_helper'
require_relative './vcr_helper'

describe Person do

  before do
    VCR.insert_cassette(__name__)
    @mfojtik = Person.new('mfojtik')
  end

  after do
    VCR.eject_cassette
  end

  it 'must include Marek Mahut in the list of followers' do
    @mfojtik.followers.must_include 'Marek Mahut'
  end

end
