require "minitest/spec"
require "minitest/autorun"

require "welcome"
require "spec_helper"

describe Welcome do
	it "has a message" do
		hello = Welcome.new
		hello.message.must_match "Welcome"
	end
end

describe "My search page" do
	it "has results" do
		visit "http://google.com"
		fill_in "q", with: "Code Fellows"
		click_on "Google Search"
		page.text.must_include "codefellows.org"
		page.text.must_include "twitter.com/CodeFellowsOrg"
	end
end
