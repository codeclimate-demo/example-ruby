require "spec_helper"
require_relative "../duplication_2"

describe AnotherExample do
  describe "#identical" do
    it "demonstrates idential duplication" do
      expect{
        AnotherExample.new.identical("hi")
      }.to_not raise_error
    end
  end

  describe "#similar" do
    it "demonstrates similar duplication" do
      expect{
        AnotherExample.new.identical("hi")
      }.to_not raise_error
    end
  end
end
