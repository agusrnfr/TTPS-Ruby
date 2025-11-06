class ArgentinePhoneValidator < ActiveModel::EachValidator
  ARG_PHONE_REGEX = /\A(\+54\s?9?\s?\d{2,4}\s?\d{3,4}-?\d{4}|\d{2,4}\s?\d{3,4}-?\d{4})\z/

  def validate_each(record, attribute, value)
    return if value.blank? || value.match?(ARG_PHONE_REGEX)

    record.errors.add(attribute, "no tiene un formato válido para un número argentino")
  end
end
