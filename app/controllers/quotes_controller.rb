class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  def self.autocomplete(i, i1, options)
    # code here

  end

  # GET /quotes
  # GET /quotes.json
  def index
    @quotes = Quote.all
  end

  def company_name
    @customer = Customer.all
  end
  # GET /quotes/1
  # GET /quotes/1.json
  def show

  end

  # GET /quotes/new
  def new
    @quotes = Quote.create(order_date: Time.now, customer_id: @customer.company_name)
  end

  # GET /quotes/1/edit
  def edit
    @quotes = Quote.find(params[:id])
  end

  # POST /quotes
  # POST /quotes.json
  def create
    @quotes = Quote.new(quote_params)

    respond_to do |format|
      if @quotes.save
        format.html { redirect_to @quotes, notice: 'Quote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @quotes }
      else
        format.html { render action: 'new' }
        format.json { render json: @quotes.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotes/1
  # PATCH/PUT /quotes/1.json
  def update
    respond_to do |format|
      if @quotes.update(quote_params)
        format.html { redirect_to @quotes, notice: 'Quote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @quotes.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotes/1
  # DELETE /quotes/1.json
  def destroy
    @quotes.destroy
    respond_to do |format|
      format.html { redirect_to quotes_url }
      format.json { head :no_content }
    end
  end

  def send_mail
    name = params[:name]
    email = params[:email]
    body = params[:quote_id, :quote_information, :quote_amount, :quote_due_date, :artwork_due_date, :artwork_proof_link, :production_notes, :quote_status, :quote_link, :order_ship_date, :order_installation_date]
    ContactMailer.contact_email(name, email, body).deliver
    redirect_to contact_path, notice: 'Message sent'
  end

  def quote_params
    params.require(:quote).permit(:email, :quote_id, :quote_master_id, :quote_information, :quote_amount, :quote_due_date, :artwork_due_date, :artwork_proof_link, :production_notes, :quote_status, :quote_link, :order_ship_date, :order_installation_date)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quotes = Quote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.

end
