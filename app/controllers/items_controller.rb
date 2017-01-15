class ItemsController < ApplicationController
  def create
    @todo_list = TodoList.find(params[:todo_list_id])
    @item = @todo_list.items.create(item_params)
    redirect_to todo_list_path(@todo_list)
  end

  def edit
    @todo_list = TodoList.find(params[:todo_list_id])
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @todo_list = TodoList.find(@item.todo_list_id)
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @todo_list, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo_list }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @todo_list = TodoList.find(@item.todo_list_id)
    @item.destroy
    respond_to do |format|
      format.html { redirect_to @todo_list, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
 
  private
    def item_params
      params.require(:item).permit(:title, :done)
    end
end
