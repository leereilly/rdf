require File.join(File.dirname(__FILE__), 'spec_helper')
require 'rdf/spec/repository'

describe RDF::Repository do
  before :each do
    @repository = RDF::Repository.new
  end

  # @see lib/rdf/spec/repository.rb
  it_should_behave_like RDF_Repository

  it "should maintain metadata options" do
    @repository = RDF::Repository.new(:test => "Test metadata")
    @repository.options[:test].should == "Test metadata"
  end

end
