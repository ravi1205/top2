require 'rails_helper'

RSpec.describe Example, type: :model do
  it = "it is not validate without title" do
  example = Example.new
  expect(example).not_to be_valid
end
end
