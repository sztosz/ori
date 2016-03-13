class DumpPolicy < EcuPolicy
  def show?
    !@user.nil?
  end
end
