class DumpTableController < ApplicationController
  def index
    @dumps = Dump.eager_load(ecu: { engine: { body: :brand } }).all
  end

  def search
  end
end
