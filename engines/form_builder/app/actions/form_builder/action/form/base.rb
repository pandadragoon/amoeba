module FormBuilder
  module Action
    module Form
      # Base class for form actions
      class Base
        attr_reader :attrs, :repository

        def self.call(attrs, repository = FormBuilder::Repository::Form::Repo.new)
          new(repository, attrs).call
        end

        def initialize(repository, attrs)
          @repository = repository
          @attrs = attrs
        end
      end
    end
  end
end