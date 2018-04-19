class TreesController < ApplicationController
  def edit
    @tree = Tree.find(params[:id])
    render :edit
  end

  def index
    @sorted_trees = Tree.sorted
    @trees = Tree.all
    render :index
  end

  def show
    @tree = Tree.find(params[:id])
    render :show
  end

  def new
    @tree = Tree.new
    render :new
  end

  def create
    @tree = Tree.new(tree_params)
    if @tree.save
      redirect_to trees_path
    else
      render :new
    end
  end

  def update
    @tree = Tree.find(params[:id])
    if @tree.update(tree_params)
      redirect_to trees_path
    else
      render :edit
    end
  end

  def destroy
    @tree = Tree.find(params[:id])
    @tree.destroy
    redirect_to trees_path
  end


  private
  def tree_params
    params.require(:tree).permit(:title)
  end
end
