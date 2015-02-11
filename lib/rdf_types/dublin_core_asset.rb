#class DublinCoreAsset
 # include ActiveFedora::RDFObject 
 # map_predicates do |map|
 #   map.title(in: RDF::DC)
 #   map.creator(in: RDF::DC)
 #   map.contributor(in: RDF::DC)
 #   map.date(in: RDF::DC)
 #   map.subject(in: RDF::DC)
 #   map.relation(in: RDF::DC)
 # end
#end

class DublinCoreAsset < ActiveFedora::Rdf::Resource 
  property :title, predicate: RDF::DC.title
  property :creator, predicate: RDF::DC.creator
  property :contributor, predicate: RDF::DC.contributor
  property :date, predicate: RDF::DC.date
  property :subject, predicate: RDF::DC.subject
  property :relation, predicate: RDF::DC.relation
end