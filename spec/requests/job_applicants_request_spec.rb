require 'rails_helper'

RSpec.describe "JobApplicants", type: :request do
  it "root url renders index template" do
    get "/"
    expect(response).to render_template(:index)
  end

  it "render index template" do
    get "/job_applicants"
    expect(response).to render_template(:index)
  end
end
