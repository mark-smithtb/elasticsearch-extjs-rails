class Profiles < Netzke::Basepack::Grid
  def configure(c)
    super
    c.model = Profile
  end
end
