require 'rails_helper'

describe "#get to api/v1/hotreads", type: :request do
  it "returns success status and gets hotreads" do

    15.times { Read.create(title: "aol", url: "aol.com") }
    14.times { Read.create(title: "bol", url: "bol.com") }
    13.times { Read.create(title: "apple", url: "apple.com") }
    12.times { Read.create(title: "bananas", url: "bananas.com") }
    11.times { Read.create(title: "nate", url: "nate.com") }

    get "/api/v1/hotreads"

    expect(response).to be_success
    expect(Read.count).to eq(65)
  end
end
