require_relative 'password'

class Generator

  def self.all_styles
    [
      'surprise me',
      'subject',
      'verb',
      'subject verb',
    ]
  end

  attr_accessor :style

  def initialize(style)
    @style = style
    if @style.nil? || @style.empty? || @style == 'surprise me'
      styles = self.class.all_styles[1..-1]
      @style = styles[SecureRandom.random_number(styles.length)]
    end
  end

  def run
    Password.new(@style).to_s
  end

end

