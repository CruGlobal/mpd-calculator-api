class BudgetsController < ApplicationController

  def index

    #TODO: Filter by user and ministry
    @budgets = Budget.all

  end

end
