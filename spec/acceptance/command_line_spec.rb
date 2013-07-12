require 'acceptance/spec_helper'

describe "Command Line API" do
  describe "making chapters" do
    specify "with a title" do
      expect{`./bin/mauthur chapter "a title"`}.not_to raise_exception
    end

    specify "without a title is invalid" do
      expect{`./bin/mauthur chapter`}.to raise_exception
    end
  end
end
