require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "is valid with valid attributes" do
    entry = Entry.new(meal_type: "Breakfast", carbohydrates: 20, protiens: 5, fats: 2, calories: 400)
    assert entry.save
  end

  test "should not save entries without calories" do
     entry = Entry.new(meal_type: "Breakfast", carbohydrates: 20, protiens: 5, fats: 2)
    assert_not entry.save
  end
end
