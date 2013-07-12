require 'unit/spec_helper'

require 'marthur/memory_store'
require 'marthur/chapter'

describe Marthur::Chapter do
  let(:io) { Marthur::MemoryStore.new }
  let(:title) { "An Unexpected Journey" }

  before do
    Marthur::Chapter.new(io) do |chapter|
      chapter.title = title
    end
  end

  describe "chapter title" do
    let(:markdown_title) { "# #{title}" }
    subject { io.read }

    it { should include title }
    it { should include markdown_title }
  end
end
