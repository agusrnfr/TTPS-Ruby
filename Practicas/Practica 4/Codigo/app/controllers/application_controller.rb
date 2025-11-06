class ApplicationController < ActionController::Base
  before_action :set_locale
  allow_browser versions: :modern
  stale_when_importmap_changes

  private

  def set_locale
    requested_locale = params[:lang]&.to_sym
    I18n.locale = I18n.available_locales.include?(requested_locale) ? requested_locale : I18n.default_locale
  end
end
