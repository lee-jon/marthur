require "marthur/version"
require "marthur/file_store"
require 'pathname'
require 'thor'

module Marthur
  class App < Thor
    package_name "Mauthor"

    desc "chapter [TITLE]", "generate a titled chapter"
    def chapter title=""
      `mkdir -p #{Config.root_path}/chapters`
      file_name = title.downcase.gsub(/s+/,'-').gsub(/\W/, '')
      path = Pathname.new %(#{Config.root_path}/chapters/#{file_name}.md)
      io = FileStore.new(path)

      Chapter.new(io) do |chapter|
        chapter.title = title
      end
    end
  end

  module Config
    extend self

    def root_path
      ENV['ROOT'] || '.'
    end
  end
end
