module FormBuilder
  class Engine < ::Rails::Engine
    isolate_namespace FormBuilder
    config.generators.api_only = true
  end
end
