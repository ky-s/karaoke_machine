# coding: utf-8

class KaraokeMachine
  def initialize(melody)
    @melody = melody
  end

  CORDS = %w(C C# D D# E F F# G G# A A# B).freeze

  def transpose(amount)
    @melody.gsub(/[A-G]#|[A-G]/) { |note| CORDS[(CORDS.index(note) + amount) % CORDS.size] }
  end
end
