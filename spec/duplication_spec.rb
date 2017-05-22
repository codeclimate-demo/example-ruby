require "spec_helper"
require_relative "../duplication"

describe DuplicationExample do
  describe "#identical" do
    it "demonstrates idential duplication" do
      expect{
        class Example
          include DuplicationExample
        end

        Example.new.identical("hi")
      }.to_not raise_error
    end
  end

  describe "#similar" do
    it "demonstrates similar duplication" do
      expect{
        class Example
          include DuplicationExample
        end

        Example.new.similar
      }.to_not raise_error
    end
  end
end
