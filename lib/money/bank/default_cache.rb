class Money
  module Bank
    module DefaultCache

      def initialize
        @store = {}
      end

      def fetch key, &block
        return @store[key] if @store.key? key
        @store[key] = block.call
      end

    end
  end
end
