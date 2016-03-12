class DumpTableController < ApplicationController
  def initialize
    @dump = Dump.new
    super
  end

  def index
    @dumps = Dump.all
  end

  # rubocop:disable Metrics/AbcSize
  def search
    @dumps = Dump.search_hw(params[:search_hw])
                 .search_sw(params[:search_sw])
                 .search_ecu(params[:search_ecu])
                 .search_engine(params[:search_engine])
                 .search_body(params[:search_body])
                 .search_brand(params[:search_brand])
    render :index
  end
  # rubocop:enable Metrics/AbcSize
end
