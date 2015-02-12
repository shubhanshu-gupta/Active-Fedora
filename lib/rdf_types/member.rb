require "active-fedora"
require  "./lib/rdf_vocabularies/questions_vocab.rb"
class Member < ActiveFedora::Rdf::Resource
  configure type: RDF::FOAF.Person
  property :nick, predicate: RDF::FOAF.nick
  property :givenName, predicate: RDF::FOAF.givenName
  property :familyName, predicate: RDF::FOAF.familyName
  property :questions, predicate: QuestionsVocab.askedQuestion, class_name: "Question"
  accepts_nested_attributes_for :questions
end