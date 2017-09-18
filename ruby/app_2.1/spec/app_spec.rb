require_relative '../app.rb'

RSpec.describe 'Simple app' do
  it '#hello_world' do
    expect(hello_world).to eq('Hello from Ruby 2.1.10')
  end
end
