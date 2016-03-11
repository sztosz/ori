class DumpTableController < ApplicationController
  def index
    @dumps = Dump.all
  end

  def search
  end
end
