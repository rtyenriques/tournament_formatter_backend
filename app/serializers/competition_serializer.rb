class CompetitionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :comp_type, :description
end
