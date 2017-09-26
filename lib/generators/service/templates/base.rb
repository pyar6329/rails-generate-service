class BaseService < Reform::Form
  def initialize(attributes = {})
    @current_user = attributes[:current_user]
    @params = attributes[:params]
    @headers = attributes[:headers]
  end

  def call
    nil
  end

  private
    attr_reader :current_user, :params, :headers
end
