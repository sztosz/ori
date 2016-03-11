class DumpTableController < ApplicationController
  def index
    # @dumps = Dump.eager_load(:ecus, :engines, :bodies, :brands).all
    @dumps = Dump.all
  end

  def search
  end
end
