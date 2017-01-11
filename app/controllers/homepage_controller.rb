class HomepageController < ApplicationController
  def index
    @hotreads = Read.top_ten_reads_of_the_day
  end
end
