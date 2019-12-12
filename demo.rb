def make_sandwich(element1, element2)
  yield("A #{element1} and #{element2} sandwich")
end
 
make_sandwich("Creamy peanut butter", "glittering sense of accomplishment") { |b| p "#{b.reverse} on #{"bread".reverse}" }
make_sandwich("Creamy peanut butter", "glittering sense of accomplishment") { |b| p "#{b} on tortilla" }

describe 'my own map' do
  it "returns an array with all values made negative" do
    expect(map([1, 2, 3, -9]){|n| n * -1}).to eq([-1, -2, -3, 9])
  end

# def make_sandwich(element1, element2)
#   base = "A #{element1} and #{element2}"
#   yield(base)
# end
 
# make_sandwich("gator", "gumbo") do |innards|
#   p "#{innards} on rye"
# end

# def make_sandwich(element1, element2)
#   base = "A #{element1} and #{element2}"
#   puts base
#   yield
#   base
# end
 
# make_sandwich("chicken", "a sense of malaise") do |innards|
#   puts "making some tasty stuff..."
# end


# PORTION_1 = {
#   label: "Kingdom",
#   sub_category: {
#     label: "Phylum",
#     sub_category: {
#       label: "Class"
#       sub_category: {
#         label: "Order",
#         sub_category: {
#           label: "Family",
#           sub_category: {
#             label: "Genus",
#             sub_category: {
#               label: "Species",
#               sub_category: nil
#             }
#           }
#         }
#       }
#     }
#   }
# }



# cars = { toyota: ["avalon","camry"], honda: ["civic", "accord"] }

# print cars["toyota"]

# def greeting_a_person(name)
#   puts "Hello #{name}"
# end

# greeting_a_person("Annie")