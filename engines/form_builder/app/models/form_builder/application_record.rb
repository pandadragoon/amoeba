module FormBuilder
  class ApplicationRecord < ActiveRecord::Base
    self.abstract_class = true

    connects_to database: { writing: :form_builder, reading: :form_builder_replica }
  end
end
