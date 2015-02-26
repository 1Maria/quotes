class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.create(body: params[:quote][:body])
    redirect_to quotes_path
  end
end
