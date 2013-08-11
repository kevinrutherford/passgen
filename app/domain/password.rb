require 'securerandom'

class Password

  def initialize(structure)                                         # poop -- primitive
    if coin_toss
      @subject_plural = true
    else
      @verb_plural = true
    end
    if structure.split.length == 1
      @embellish_subject = true
      @embellish_verb = true
    elsif coin_toss
      @embellish_subject = true
    else
      @embellish_verb = true
    end
    @words = structure.split.map { |type| self.send(type.to_sym) }.flatten
  end

  def to_s
    @words.join(' ')
  end

private

  def subject
     n = pluralize(Noun.new.to_s, @subject_plural)
     if @embellish_subject
       [Adjective.new.to_s, n]
     else
       n
     end
  end

  def verb
    v = pluralize(Verb.new.to_s, @verb_plural)
    if @embellish_verb
      [v, Adverb.new.to_s]
    else
      v
    end
  end

  def pluralize(word, should)
    should ? word.pluralize : word
  end

  def coin_toss
    SecureRandom.random_number(2) == 0
  end

end

