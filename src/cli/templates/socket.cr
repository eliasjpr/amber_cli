module CLI
  class WebSocket < Teeplate::FileTree
    include CLI::Helpers
    directory "#{__DIR__}/socket"

    @name : String
    @fields : Array(String)

    def initialize(@name, @fields)
      add_dependencies <<-DEPENDENCY
      require "../src/sockets/**"
      DEPENDENCY
    end
  end
end
