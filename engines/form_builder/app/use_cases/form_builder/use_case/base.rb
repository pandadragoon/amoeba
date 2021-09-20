module FormBuilder
  module UseCase
    # Base class for use cases
    class Base
      attr_reader :contract, :callbacks, :attrs, :actions

      def initialize(attrs, callbacks, contract, actions)
        @contract = contract
        @callbacks = callbacks
        @attrs = attrs
        @actions = actions
      end

      private

      def validate(attrs)
        result = contract.call(attrs)
        result[:errors]
      end

      def new_error_msg(*args)
        FormBuilder::Struct::ValidationErrorMsg.new(*args)
      end
    end
  end
end