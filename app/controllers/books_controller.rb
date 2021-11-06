class BooksController < ApplicationController
  before_action :set_book, only: %i[ show edit update destroy ]
  before_action :require_login

  def index
    @books = Book.includes(:publisher, :authors).all
    # @books = Book.all
  end
end
