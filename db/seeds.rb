def seed_img(path)
  i = Img.new
  i.image = File.new(File.join(Rails.root, 'app/assets/images', path))
  i
end

def faker_sentences(max: 10)
  Faker::Lorem.sentences(sentence_count = Random.rand(1..max)).join(' ')

end


#---------------Production Data ------------------------------------
u = User.new :email => 'jessethebuilder@yahoo.com', :password => 'carltonlasiter', :admin => true
u.save!

pt = ProductType.new name: 'Flowers',
                     description: 'The dried buds of the Cannabis plant. Generally smoked in either glass, metal, or wood bongs and pipes,
                                                    or ground and smoked in rolling papers or blunt wraps. It can also be vaporized, which many doctors
                                                    say is a healthier approach.',
                     :menu_index => 0
pt.save!

#3.times do |i|
#  pt = ProductType.new :name => Faker::Name.last_name, :description => faker_sentences, :menu_index => i + 1
#  pt.save!
#end

s = Supplier.new :name => Faker::Name.first_name
s.user = u
s.save!

#10.times do
#  p = Product.new :name => Faker::Company.bs, :description => faker_sentences, :batch_description => faker_sentences,
#                  :thc => Random.rand(1.0..30.0), :donation => Random.rand(300..600)
#  p.supplier = s
#  p.product_type = ProductType.all.sample
#
#  3.times do
#    p.imgs << seed_img(['temp/mmj_bud.jpg', 'temp/bud_transparent.png'].sample)
#  end
#  p.save!
#end
#----------------End Production Data---------------------------------------------