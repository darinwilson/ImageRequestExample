class MainActivity < Android::App::Activity
  def onCreate(savedInstanceState)
    super
    @view = Android::Widget::ImageView.new(self)
    setContentView(@view)
    image_request = Com::Android::Volley::Toolbox::ImageRequest.new("http://placegant.me/pg/200/300",
      self, 0, 0, nil, self)
    request_queue.add(image_request)
  end

  def onResponse(bitmap)
    @view.setImageBitmap(bitmap)
  end

  def onErrorResponse(error)
    puts "image load error: #{error.inspect}"
  end

  def request_queue
    @request_queue ||= Com::Android::Volley::Toolbox::Volley.newRequestQueue(self)
  end
end

