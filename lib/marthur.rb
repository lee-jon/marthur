require "marthur/version"
require 'pathname'

module Marthur
  extend self

  def call args
    method = args[0]
    public_send(method, args[1..-1])
  end

  def chapter *args
    title = args[0][0]
    file_name = title.downcase.gsub(/s+/,'-').gsub(/\W/, '')
    path = Pathname.new %(#{root_path}/chapters/#{file_name}.md)

    `mkdir -p #{root_path}/chapters`
    File.open path, 'w+' do |file|
      file.write "# #{title}"
    end
  end

  def root_path
    ENV['ROOT'] || '.'
  end
end
