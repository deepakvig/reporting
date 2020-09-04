require 'rails_helper'

RSpec.describe Skill, type: :model do
  it "belongs to applicant" do
    t = Skill.reflect_on_association(:applicant)
    expect(t.macro).to eq(:belongs_to)
  end
end
