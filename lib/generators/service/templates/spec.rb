require 'rails_helper'

RSpec.describe <%= class_name %>Service do
  subject { <%= class_name %>Service.new(params) }
  let(:params){
    {
      some_key: :write_value
    }
  }
  pending "add some examples to (or delete) #{__FILE__}"
end
