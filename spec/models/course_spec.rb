require "rails_helper"

RSpec.describe Course, type: :model do
  it "has a passing test" do
    expect(true).to be_truthy
  end
  it "should have a par value" do
    expect(subject.par_value).to be >= 0
  end
end
