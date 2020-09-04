class JobApplicantsController < ApplicationController

  def index
    @jobs = Job.includes(applicants: :skills).all
  end
end
