class GeneratesPassphrase

  def initialize(style, ui)
    @ui = ui
    @style = style
    if @style.nil? || @style.empty?
      @style = 'surprise me'
    end
  end

  def run
    generator = Generator.new(@style)
    phrase = generator.run
    @ui.display_phrase(phrase, @style)
  end

end

