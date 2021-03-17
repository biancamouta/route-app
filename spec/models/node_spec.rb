require 'rails_helper'

RSpec.describe Node, type: :model do
  let!(:node_1) { Node.create(name: 'test_1', value: 0) }

  it 'is valid' do
    expect(node_1).to be_valid
  end
end
