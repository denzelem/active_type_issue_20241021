class Hacker < ActiveType::Object
  attribute :age, :integer
  validates :age, numericality: { greater_than_or_equal_to: 18 }, presence: true

  after_save do
    User.create!(name: 'Hacker', age:)
  end
end
