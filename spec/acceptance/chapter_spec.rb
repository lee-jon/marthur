require 'acceptance/spec_helper'

describe "Authoring a Chapter" do
  let(:title) { "Introduction" }
  let(:file) { "#{ENV["ROOT"]}/chapters/introduction.md" }

  before do
    `./bin/marthur chapter #{title}`
  end

  specify "adding a chapter" do
    File.exists?(file).should be_true
  end

  describe "the title" do
    let(:markdown_title) { "# #{title}" }
    subject { File.read(file) }

    it { should include markdown_title }
  end
end
