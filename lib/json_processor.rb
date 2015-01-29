require 'json'

module JsonProcessor
  class Processor
    def initialize(file)
      file = File.read(file)
      @parsed = JSON.parse(file)
    end

    def merged
      self.merge.to_json
    end

    def merge
      d = {}
      @parsed.each do |h|
        h.each do |k,v|
          d[k] ||= {}
          v.each do |x,y|
            d[k][x] ||= {}
            y.each do |a,b|
              d[k][x][a] ||= b
            end
          end
        end
      end
      d
    end
  end
end