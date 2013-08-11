require_relative 'generator'

class GeneratesPassphrase

  def initialize(style)
    @style = style
    if @style.nil? || @style.empty?
      @style = 'surprise me'
    end
  end

  def run
    generator = Generator.new(@style)
    phrase = generator.run
  end

end

