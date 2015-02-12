require "active-fedora"
require "./lib/rdf_vocabularies/questions_vocab"

class Answer < ActiveFedora::Rdf::Resource
  configure type: QuestionsVocab.Answer
  property :description, predicate: RDF::DC.description
end