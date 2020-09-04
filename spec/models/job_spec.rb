require 'rails_helper'

RSpec.describe Job, type: :model do
  it "has many applicants" do
    t = Job.reflect_on_association(:applicants)
    expect(t.macro).to eq(:has_many)
  end

  it "get correct skill count" do
    job = create(:job)
    applicant = create(:applicant, job: job)
    create_list(:skill, 10, applicant: applicant)

    expect(job.skills.count).to eq(10)
  end
end
