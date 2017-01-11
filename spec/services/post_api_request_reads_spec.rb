require 'rails_helper'

describe "#post to api/v1/hotreads", type: :request do
  it "returns success status and creates a new read" do
    post "/api/v1/hotreads", link: { title: "Great Link", url: "http://www.google.com" }

    expect(response).to be_success
    expect(Read.count).to eq(1)
  end
end
