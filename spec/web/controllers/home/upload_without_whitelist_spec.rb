require 'spec_helper'
require_relative '../../../../apps/web/controllers/home/upload_without_whitelist'

describe Web::Controllers::Home::UploadWithoutWhitelist do
  let(:action) { Web::Controllers::Home::UploadWithoutWhitelist.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
