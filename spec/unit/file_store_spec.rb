require 'unit/spec_helper'
require 'marthur/file_store'
require 'tempfile'

describe Marthur::FileStore do
  subject { Marthur::FileStore }

  it "must be constructed with a path" do
    expect{subject.new "filename"}.not_to raise_exception
    expect{subject.new}.to raise_exception
  end

  context "storing and retrieving data" do
    let(:tmp_file) { Tempfile.new("filename") }
    subject { Marthur::FileStore.new(tmp_file.path)}

    specify "writing to the filestore" do
      subject.write "DATA"
      subject.read.should eq "DATA"
    end
  end
end
