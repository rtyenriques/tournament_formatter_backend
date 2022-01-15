class EntrySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :crew, :location, :competition
  # belongs_to :competition
end
