module Marthur
  class FileStore
    attr_accessor :pathname
    def initialize pathname
      @pathname = pathname
    end

    def write data
      File.open(pathname, "w+") do |file|
        file.write data
      end
    end

    def read
      File.read pathname
    end
  end
end
