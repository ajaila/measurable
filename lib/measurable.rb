require 'measurable/version'

# Distance measures. The required order is important.
require 'measurable/euclidean'
require 'measurable/minkowski'
require 'measurable/cosine'
require 'measurable/jaccard'
require 'measurable/tanimoto'
require 'measurable/chebyshev'
require 'measurable/maxmin'
require 'measurable/haversine'

require 'measurable/pearson'

module Measurable
  # PI / 180 degrees.
  RAD_PER_DEG = Math::PI / 180

  extend self # expose all instance methods as singleton methods.
end
