class PoliteController < ApplicationController
  def salute
    greetings = [
      "Good day sir/ma’am.",
      "Hello there!",
      "Greetings!",
      "Hi, how are you?",
      "Salutations!"
    ]
    render plain: greetings.sample
  end
end