class StagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @menu_stages = "active"
    @stages = Stage.where(visible: true)
    @stagetypes = Stagetype.where(visible: true).order(updated_at: :desc)
    @inscription = Block.find_by(tag: "inscription_stage")
    @infos = Block.find_by(tag: "infos")
    @tarifs1 = Block.find_by(tag: "tarifs1")
  end

end
