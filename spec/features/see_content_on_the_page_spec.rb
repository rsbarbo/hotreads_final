require 'rails_helper'

feature "see contents on the page" do
  scenario "when visit hotreads page, I should see contents" do
    require "rails_helper"

    RSpec.feature "Top ten reads", :type => :feature do
      scenario "User sees top ten reads displayed in the index" do
        15.times { Read.create(title: "aol", url: "aol.com") }
        14.times { Read.create(title: "bol", url: "bol.com") }
        13.times { Read.create(title: "apple", url: "apple.com") }
        12.times { Read.create(title: "bananas", url: "bananas.com") }
        11.times { Read.create(title: "nate", url: "nate.com") }
        10.times { Read.create(title: "raphael", url: "raphael.com") }
        9.times { Read.create(title: "andrew", url: "andrew.com") }
        8.times { Read.create(title: "turing", url: "turing.com") }
        3.times { Read.create(title: "job", url: "job.com") }
        2.times { Read.create(title: "nope", url: "nope.com") }
        1.times { Read.create(title: "yay", url: "yay.com") }
        1.times { Read.create(title: "awesome", url: "awesome.com") }

        visit '/'

        expect(page).to have_selector('.hot-read', count: 10)
        expect(page).to have_content("aol.com")
        expect(page).not_to have_content("h.com")
      end
    end
  end
end
