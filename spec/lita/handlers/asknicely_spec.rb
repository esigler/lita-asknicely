require 'spec_helper'

describe Lita::Handlers::Asknicely, lita_handler: true do
  it do
    is_expected.to route_command('nps').to(:score)
    is_expected.to route_command('nps 14').to(:score)
  end

  describe '#score' do
    it 'shows a score for the last 30 days' do
      send_command('nps')
      expect(replies.last).to eq("Net Promoter Score (last 30 days): 62.5\n")
    end

    it 'shows a score for the last 14 days' do
      send_command('nps 14')
      expect(replies.last).to eq("Net Promoter Score (last 14 days): 62.5\n")
    end
  end
end
