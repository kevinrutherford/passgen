class Example

  def initialize(passphrase, service)
    @passphrase = passphrase.capitalize
    @service = service
  end

  def generate
    opts = {
      'i' => '1',
      's' => '5',
      'o' => '0',
      'e' => '3',
    }
    munged = @passphrase.sub(/[iseo]/, opts)
    "#{munged}+#{@service}"
  end

end

