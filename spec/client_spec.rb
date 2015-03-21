require 'spec_helper'

describe 'NbaStats' do

  describe 'client' do
    client = NbaStats::Client.new

    describe '.get' do
      response = client.get('/')
      it 'should return a response starting with doctype' do
        expect(response.downcase).to start_with '<!doctype html>'
      end
    end

  end # client

end