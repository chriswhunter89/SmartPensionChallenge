require './lib/log_data'

log_data = LogData.new('./spec/test_log_1.log')
log_data.parse

describe LogData do
  describe '#parse' do
      it 'should parse log file into hash' do
        log_hash = { '/help_page/1' => ['839.193.030.009', '834.193.030.009', '989.398.951.889', '989.398.951.889'], '/contact' => ['184.123.665.067', '184.123.665.066'], '/about/2' => ['444.701.448.104'] }
        expect(log_data.parse).to eq(log_hash)
      end
    end

  describe '#page_views' do
    it 'should return a list of page views and their associated visits sorted in descending order' do
      expect do
        log_data.page_views
      end.to output("/help_page/1 4 views\n/contact 2 views\n/about/2 1 views\n").to_stdout
    end
  end

  describe '#unique_page_views' do
    it 'should return a list of page views and their associated unique visits sorted in descending order' do
      expect do
        log_data.unique_page_views
      end.to output("/help_page/1 3 unique views\n/contact 2 unique views\n/about/2 1 unique views\n").to_stdout
    end
  end
end
