class Api::V1::HotreadsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
    @hotreads = Read.top_api
    render json: @hotreads, status: 200
  end

  def create
    @read = Read.create(title: params['link']['title'],
                        url: params['link']['url'])
  end

  private

  def link_params
    params.require(:link).permit(:title, :url)
  end
end
