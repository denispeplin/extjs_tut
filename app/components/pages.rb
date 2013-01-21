class Pages < Netzke::Basepack::Grid
  def configure(c)
    super
    c.model = "Page"
  end
end
