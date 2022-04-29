class Api::V1::FooController < ApplicationController
  before_action :doorkeeper_authorize!

  def index
    render json: { bar: '1', baz: '2' }
  end
end
