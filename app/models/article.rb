class Article < ApplicationRecord
  validates :title,       presence: true, length: { minimum: 6, maximum: 200 }
  validates :description, presence: true, length: { minimum: 10 }

  def length_val(field, minmax)  ## pass field name and which value i.e. :title, :maximum)
    _validators[field].select do |e|
      e.is_a? ActiveRecord::Validations::LengthValidator
    end.first.options[minmax]
  end

end
