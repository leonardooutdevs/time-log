require 'rails_helper'

RSpec.describe 'TimeLogs' do
  describe 'GET index' do
    subject(:index) { get time_logs_path }

    let(:time_logs) { create_list(:time_log, 2) }

    it_behaves_like 'a request'
  end

  describe 'POST #create' do
    subject(:create) { post time_logs_path(attrs) }

    let(:attrs) { { time_log: attributes_for(:time_log) } }

    it_behaves_like 'a request', :found
    it { create and expect(flash[:notice]).to include('Time Log successfully created.') }
    it { expect { create }.to change(TimeLog, :count) }

    context 'when params is invalid' do
      let(:attrs) { { time_log: attributes_for(:time_log).except(:description) } }

      it { expect { create }.not_to change(TimeLog, :count) }
    end
  end
end
