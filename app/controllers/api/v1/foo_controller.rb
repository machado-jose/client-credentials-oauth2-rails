class Api::V1::FooController < ApplicationController
  before_action -> { doorkeeper_authorize! :index }, only: :index
  before_action -> { doorkeeper_authorize! :common }, only: :common

  def index
    render json: { bar: '1', baz: '2' }
  end

  def common
    render json: { liz: '1' }
  end
end
