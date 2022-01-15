class CompetitionSerializer
  include FastJsonapi::ObjectSerializer
  attributes :comp_type, :description, :entries
  # has_many :entries
end
