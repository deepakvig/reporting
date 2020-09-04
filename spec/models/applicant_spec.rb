require 'rails_helper'

RSpec.describe Applicant, type: :model do
  it "has many skills" do
    t = Applicant.reflect_on_association(:skills)
    expect(t.macro).to eq(:has_many)
  end

  it "has many job" do
    t = Applicant.reflect_on_association(:job)
    expect(t.macro).to eq(:belongs_to)
  end

  it "fixes website url" do
    applicant = create(:applicant)
    expect(applicant.website_url).to include('http://')
  end
end
