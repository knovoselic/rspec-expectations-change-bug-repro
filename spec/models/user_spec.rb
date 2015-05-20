require 'rails_helper'

RSpec.describe User, type: :model do
  subject { described_class.create }
  let(:create_device) { proc { subject.devices.create } }

  it do
    expect(create_device).to change subject, :devices
  end
  it do
    expect(create_device).to change { subject.devices.dup }
  end
  it do
    expect(create_device).to change { subject.devices.to_a }
  end
end
