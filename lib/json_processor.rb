require 'json'

module JsonProcessor
  class Processor
    def initialize(file)
      file = File.read(file)
      # Parse the JSON from the file
      @parsed = JSON.parse(file)
    end

    def merged
      self.merge.to_json
    end

    def merge
      d = {}
      @parsed.each do |h|
        # Iterate through each array element
        h.each do |k,v|
          # For each hash, create a key in the `d` hash
          # equivalent to each `k` and point it to an
          # empty hash unless it already has a value
          d[k] ||= {}
          v.each do |x,y|
            # For each sub-hash, repeat the same procedure
            d[k][x] ||= {}
            y.each do |a,b|
              # Set the access value
              d[k][x][a] ||= b
            end
          end
        end
      end
      d
    end
  end
end