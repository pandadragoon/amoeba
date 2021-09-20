# frozen_string_literal: true

module FormBuilder
  module Repository
    module Form
      # FormBuilder::Form Repository
      class Repo
        attr_reader :form, :struct

        def initialize
          @form = FormBuilder::Form
          @struct = FormBuilder::Struct::Form
        end

        def new_entity(attrs = nil)
          new_form = form.new(attrs)
          map_form_to_struct(new_form)
        end

        def create(attrs)
          new_form = form.create(attrs).as_json
          map_form_to_struct(new_form)
        end

        def update_form(attrs)
          new_form = form.update(attrs)
          map_form_to_struct(new_form)
        end

        def all
          form.all.each do |form_data|
            map_form_to_struct(form_data)
          end
        end

        def find_one(form_id)
          found = form.find(form_id)
          map_form_to_struct(found)
        end

        def find_all(query)
          form.where(query).each do |form_data|
            map_form_to_struct(form_data)
          end
        end

        private

        def map_form_to_struct(new_form)
          struct.new(new_form.as_json)
        end
      end
    end
  end
end
