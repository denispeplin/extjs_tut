class HelloWorld < Netzke::Basepack::Viewport
  js_configure do |c|
    c.layout = :fit
  end

  def configure(c)
    super
    c.items = [
      title: "Hello Ext",
      html: "Hello! Welcome to Ext JS."
    ]
  end
end
