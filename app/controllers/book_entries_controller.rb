class BookEntriesController < ApplicationController
  before_action :set_book_entry, only: %i[ show edit update destroy ]

  # GET /book_entries or /book_entries.json
  def index
    @book_entries = BookEntry.all
  end

  # GET /book_entries/1 or /book_entries/1.json
  def show
  end

  # GET /book_entries/new
  def new
    @book_entry = BookEntry.new
  end

  # GET /book_entries/1/edit
  def edit
  end

  # POST /book_entries or /book_entries.json
  def create
    @book_entry = BookEntry.new(book_entry_params)

    respond_to do |format|
      if @book_entry.save
        format.html { redirect_to book_entry_url(@book_entry), notice: "Book entry was successfully created." }
        format.json { render :show, status: :created, location: @book_entry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_entries/1 or /book_entries/1.json
  def update
    respond_to do |format|
      if @book_entry.update(book_entry_params)
        format.html { redirect_to book_entry_url(@book_entry), notice: "Book entry was successfully updated." }
        format.json { render :show, status: :ok, location: @book_entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_entries/1 or /book_entries/1.json
  def destroy
    @book_entry.destroy

    respond_to do |format|
      format.html { redirect_to book_entries_url, notice: "Book entry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_entry
      @book_entry = BookEntry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_entry_params
      params.require(:book_entry).permit(:title)
    end
end
