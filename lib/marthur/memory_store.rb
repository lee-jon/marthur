module Marthur
  class MemoryStore
    attr_accessor :data

    def initialize
      @data = ''
    end

    def read
      data
    end

    def write words
      data << words
    end
  end
end


