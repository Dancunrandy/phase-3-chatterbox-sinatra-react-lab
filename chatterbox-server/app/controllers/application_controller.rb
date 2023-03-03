class MessagesController < ApplicationController

  # GET /messages
  def index
    @messages = Message.all
    render json: @messages.to_json
  end

  # POST /messages
  def create
    @message = Message.new(message_params)

    if @message.save
      render json: @message.to_json
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /messages/:id
  def update
    @message = Message.find(params[:id])

    if @message.update(message_params)
      render json: @message.to_json
    else
      render json: @message.errors, status: :unprocessable_entity
    end
  end

  # DELETE /messages/:id
  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    head :no_content
  end

  private

  def message_params
    params.require(:message).permit(:body, :username)
  end

end
