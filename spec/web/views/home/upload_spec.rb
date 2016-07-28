require 'spec_helper'
require_relative '../../../../apps/web/views/home/upload'

describe Web::Views::Home::Upload do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/home/upload.html.erb') }
  let(:view)      { Web::Views::Home::Upload.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
