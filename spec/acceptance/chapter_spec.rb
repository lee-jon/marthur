require 'acceptance/spec_helper'

describe "Authoring a Chapter" do
  let(:title) { "Introduction" }
  let(:file) { "#{ENV["ROOT"]}/chapters/introduction.md" }

  before do
    Marthur::App.new.chapter title
  end

  describe "the title" do
    let(:markdown_title) { "# #{title}" }
    subject { File.read(file) }

    it { should include markdown_title }
  end
end
