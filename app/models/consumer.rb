class Consumer<ApplicationRecord
  validates :name, :age, presence: true
  before_validation do
    puts "give valid name " if name.nil?
  end
  after_validation do
    puts "name after validation is #{name.upcase}"
  end
  before_save do
    puts "before_saving"
  end
  after_save do
    puts "after_saving"
  end
end
