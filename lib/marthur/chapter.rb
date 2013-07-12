module Marthur
  class Chapter
    attr_accessor :io
    def initialize io, &block
      @io = io
      run block if block_given?
    end

    def run operations
      operations.call(self)
    end

    def title=title
      io.write "# #{title}"
    end
  end
end
