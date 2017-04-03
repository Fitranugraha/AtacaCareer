# Renders the home page.
class HomeController < ApplicationController
  def index
        @job_postings = JobPosting.all
        if current_user then
          @profile=current_user.profile
        end
  end
end
