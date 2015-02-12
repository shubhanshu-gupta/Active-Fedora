require "active-fedora"
require "./lib/rdf_vocabularies/questions_vocab"

class Question < ActiveFedora::Rdf::Resource
  configure type: QuestionsVocab.Question
  property :title, predicate: RDF::DC.title
  property :description, predicate: RDF::DC.description
  property :answers, predicate: QuestionsVocab.hasAnswer
end