# frozen_string_literal: true

module FormBuilder
  Dry::Rails.container do
    auto_register!('app/contracts')
    auto_register!('app/repositories')
    auto_register!('app/actions')
    auto_register!('app/use_cases')
    auto_register!('app/structs')
  end
end
