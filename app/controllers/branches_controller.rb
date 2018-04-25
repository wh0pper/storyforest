class BranchesController < ApplicationController
  # before_action :authorize, only: [:new,:create,:destroy,:edit,:private]
  def new
    @tree = Tree.find(params[:tree_id])
    @branch = @tree.branches.new
  end

  def create
   @tree = Tree.find(params[:tree_id])
   @branch = @tree.branches.new(branch_params)
   if @branch.save
     redirect_to tree_path(@branch.tree)
   else
     render :new
   end
 end

 def edit
   @tree = Tree.find(params[:tree_id])
   @branch = Branch.find(params[:id])
 end

 def update
   @branch = Branch.find(params[:id])
   if @branch.update(branch_params)
     redirect_to tree_path(@branch.tree)
   else
     render :edit
   end
 end

 def destroy
   @branch = Branch.find(params[:id])
   @branch.destroy
   redirect_to tree_path(@branch.tree)
 end

  private
    def branch_params
      params.require(:branch).permit(:body)
  end
end
