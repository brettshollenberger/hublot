module ExampleObjects

    class ActiveRecordExample
      include Hublot

      attr_accessor :created_at

      def initialize
        @created_at = Time.now
      end
      
    end

end
