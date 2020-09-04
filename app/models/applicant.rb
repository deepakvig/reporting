class Applicant < ApplicationRecord
  belongs_to :job
  has_many :skills

  def website_url
    unless website.include?("http://")
      return "http://#{website}"
    end
    website
  end
end
