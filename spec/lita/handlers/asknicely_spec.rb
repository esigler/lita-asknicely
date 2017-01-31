require 'spec_helper'

describe Lita::Handlers::Asknicely, lita_handler: true do
  let(:nps_response) do
    double('Faraday::Response',
           status: 200,
           body: '{"NPS":"64.5"}')
  end

  it do
    is_expected.to route_command('nps').to(:score)
    is_expected.to route_command('nps 14').to(:score)
  end

  describe '#score' do
    before do
      allow_any_instance_of(Faraday::Connection).to receive(:get)
        .and_return(nps_response)
    end

    it 'shows a score for the last 30 days' do
      send_command('nps')
      expect(replies.last).to eq("Net Promoter Score (last 30 days): 64.5\n")
    end

    it 'shows a score for the last 14 days' do
      send_command('nps 14')
      expect(replies.last).to eq("Net Promoter Score (last 14 days): 64.5\n")
    end
  end
end
