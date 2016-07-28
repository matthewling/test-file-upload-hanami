require 'spec_helper'
require_relative '../../../../apps/web/views/home/avatar'

describe Web::Views::Home::Avatar do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/home/avatar.html.erb') }
  let(:view)      { Web::Views::Home::Avatar.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
