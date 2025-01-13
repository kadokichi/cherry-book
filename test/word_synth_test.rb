require 'minitest/autorun'
require_relative '../yield_proc/word_synth'
require_relative '../yield_proc/effects'

class WordSynthTest < Minitest::Test
  def test_play
    synth = WordSynth.new
    assert_equal 'Ruby is fun!', synth.play('Ruby is fun!')
  end

  def test_play_with_reverse
    synth = WordSynth.new
    synth.add_effect(Effects.reverse)
    assert_equal 'ybuR si !nuf', synth.play('Ruby is fun!')
  end

  def test_play_with_many_effect
    synth = WordSynth.new
    synth.add_effect(Effects.echo(2))
    synth.add_effect(Effects.loud(3))
    synth.add_effect(Effects.reverse)
    assert_equal '!!!YYBBUURR !!!SSII !!!!!NNUUFF', synth.play('Ruby is fun!')
  end
end
