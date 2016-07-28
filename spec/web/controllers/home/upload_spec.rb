require 'spec_helper'
require_relative '../../../../apps/web/controllers/home/upload'

describe Web::Controllers::Home::Upload do
  let(:action) { Web::Controllers::Home::Upload.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
