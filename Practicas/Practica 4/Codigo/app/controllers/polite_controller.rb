class PoliteController < ApplicationController
  def salute
    greetings = I18n.t("polite.greetings")
    render plain: greetings.sample
  end
end
