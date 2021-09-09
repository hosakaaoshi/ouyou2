class SearchesController < ApplicationController
  def search 
    submit_name_ids = Submit.where("submit_name = ?", params[:submit_name]) .pluck(:id)
    problem_name_ids = Submit.where("problem_name LIKE (?)", "#{params[:problem_name]}").pluck(:id)
    @submit_searched = Submit.where("submit_id IN (?) or submit_id IN (?)", submit_name_ids, problem_name_ids)
  end
end
