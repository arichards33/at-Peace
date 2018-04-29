require 'open-uri'

Art.delete_all
Design.delete_all
Fashion.delete_all
Inspiration.delete_all



inspo = eval(File.read("db/inspiration.rb"))

inspo.each do |post|
  i = Inspiration.new
  i.blog_title = post["blog_title"]
  i.image_file = post["image_file"]
  i.date_posted = post["date_posted"]
  i.inspo_reason = post["inspo_reason"]
  i.related_art = post["related_art"]
  i.related_designs = post["related_designs"]
  i.save
end

artwork = [
  {
    "art_type" => 'watercolor',
    "piece_name" => 'Camera Woman',
    "price" => 0,
    "size" => '8x11',
    "image_file" => '/cameragirl.jpg',
    "inspiration_link" => nil
  },
  {
    "art_type" => 'sketch',
    "piece_name" => 'Coachella Outfits',
    "price" => 0,
    "size" => '8x11',
    "image_file" => '/coachella.jpg',
    "inspiration_link" => nil
  },
  {
    "art_type" => 'sketch',
    "piece_name" => 'Mystery Woman',
    "price" => 0,
    "size" => '8x11',
    "image_file" => '/womansketch.jpg',
    "inspiration_link" => nil
  },
  {
    "art_type" => 'sketch',
    "piece_name" => 'Feather Crown',
    "price" => 0,
    "size" => '8x11',
    "image_file" => '/feathergirl.jpg',
    "inspiration_link" => nil
  },
  {
    "art_type" => 'watercolor',
    "piece_name" => 'Mountain View',
    "price" => 0,
    "size" => '8x11',
    "image_file" => '/mountains.jpg',
    "inspiration_link" => nil
  },
  {
    "art_type" => 'paint',
    "piece_name" => 'Lips',
    "price" => 0,
    "size" => '11x8',
    "image_file" => '/lips.jpg',
    "inspiration_link" => nil
  },
  {
    "art_type" => 'paint',
    "piece_name" => 'Bird on Limb',
    "price" => 0,
    "size" => '11x11',
    "image_file" => '/bird.jpg',
    "inspiration_link" => nil
  },
  {
    "art_type" => 'paint',
    "piece_name" => 'Blue Lady',
    "price" => 0,
    "size" => '11x11',
    "image_file" => '/lady.jpg',
    "inspiration_link" => nil
  },
  {
    "art_type" => 'sketch',
    "piece_name" => 'Love Birds',
    "price" => 0,
    "size" => '8x11',
    "image_file" => '/lovebirds.jpg',
    "inspiration_link" => nil
  },
  {
    "art_type" => 'sketch',
    "piece_name" => 'Flowers in Her Hair',
    "price" => 0,
    "size" => '8x11',
    "image_file" => '/hairFlowers.jpg',
    "inspiration_link" => nil
  },
  {
    "art_type" => 'sketch',
    "piece_name" => 'Man on a Bench',
    "price" => 0,
    "size" => '8x11',
    "image_file" => '/readingMan.jpg',
    "inspiration_link" => nil
  },
  {
    "art_type" => 'sketch',
    "piece_name" => 'Messy Bun',
    "price" => 0,
    "size" => '11x11',
    "image_file" => '/messyBun.jpg',
    "inspiration_link" => nil
  }
]

design = [
  {
    "room" => 'Living Room',
    "project_title" => 'Picture Wall',
    "project_time" => '1 week',
    "project_cost" => 0,
    "image_file" => "/AOlivingroom.jpg",
  },
  {
    "room" => 'Event',
    "project_title" => 'Engagement Party Invites',
    "project_time" => '1 day',
    "project_cost" => 0,
    "image_file" => "/invite.jpg",
  }
]

fashion = [
  {
    "project_title" => 'Wedding',
    "image_file" => '/wedding1.jpg',
    "fashion_field" => 'Wedding'
  },
  {
    "project_title" => 'Wedding',
    "image_file" => '/wedding2.jpg',
    "fashion_field" => 'Wedding'
  },
  {
    "project_title" => 'Wedding',
    "image_file" => '/wedding3.jpg',
    "fashion_field" => 'Wedding'
  },

]


artwork.each do |piece|
  a = Art.new
  a.art_type = piece["art_type"]
  a.piece_name = piece["piece_name"]
  a.price = piece["price"]
  a.inspiration_link = piece["inspiration_link"]
  a.size = piece["size"]
  a.image_file = piece["image_file"]
  a.save
end

design.each do |example|
  d = Design.new
  d.room = example["room"]
  d.project_time = example["project_time"]
  d.project_title = example["project_title"]
  d.project_cost = example["project_cost"]
  d.inspiration_link = Inspiration.find_by(related_designs: d.project_title)
  d.image_file = example["image_file"]

  d.save
end

fashion.each do |sketch|
  f = Fashion.new
  f.project_title = sketch["project_title"]
  f.image_file = sketch["image_file"]
  f.fashion_field = sketch["fashion_field"]

  f.save
end




print "There are now #{Art.count} art images in the database.\n"
print "There are now #{Design.count} Designs in the database.\n"
print "There are now #{Fashion.count} Fashions in the database.\n"
print "There are now #{Inspiration.count} Inspirations in the database.\n"
