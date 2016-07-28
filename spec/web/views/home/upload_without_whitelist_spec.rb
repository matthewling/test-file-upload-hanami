require 'spec_helper'
require_relative '../../../../apps/web/views/home/upload_without_whitelist'

describe Web::Views::Home::UploadWithoutWhitelist do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/home/upload_without_whitelist.html.erb') }
  let(:view)      { Web::Views::Home::UploadWithoutWhitelist.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
