# frozen_string_literal: true

RSpec.describe Forger::Name do
  it "has a version number" do
    expect(Forger::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

  it "test_name" do
    p Forger::Name.name
    expect(Forger::Name.name.match?(/(\w+\.? ?){2,3}/)).to eq(true)
  end
end
