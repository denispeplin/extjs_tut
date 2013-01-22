class Users < Netzke::Basepack::Grid
  def configure(c)
    super
    c.model = "User"
  end
end
