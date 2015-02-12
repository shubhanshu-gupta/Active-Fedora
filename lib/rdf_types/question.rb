require "active-fedora"
require "./lib/rdf_vocabularies/questions_vocab"
require  "./lib/rdf_types/answer.rb"

class Question < ActiveFedora::Rdf::Resource
  configure type: QuestionsVocab.Question
  property :title, predicate: RDF::DC.title
  property :description, predicate: RDF::DC.description
  property :answers, predicate: QuestionsVocab.hasAnswer, class_name: "Answer"
  accepts_nested_attributes_for :answers
end