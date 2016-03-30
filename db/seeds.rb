User.destroy_all
User.create(
 :first_name => 'Craig',
 :last_name => 'Sy',
 :email => 'craigsy@ga.co',
 :password => 'chicken',
 :password_confirmation => 'chicken'
 )

User.create(
:first_name => 'Jones',
:last_name => 'Y',
 :email => 'jonesy@ga.co',
 :password => 'chicken',
 :password_confirmation => 'chicken'
 )

Hairdresser.destroy_all
Hairdresser.create(
  :name => 'Vincent Nobile',
  :discipline => 'Colour Technician',
  :image => 'vincent.jpg',
  :blurb => 'Vincent Nobile co-owner of Headcase Hair and director of the Colour Team is a major force behind luxury editorial colour in Australia. Nobile is known for creating precision colour for some of Australia’s leading celebrities, models and many international faces. He is revered for being the person to see when a colour needs ‘fixing’ and notorious for his expertise with blonde precision colour.'
)

Hairdresser.create(
  :name => "Jon Pulitano",
  :discipline => "Stylist",
  :image => "jon.jpg",
  :blurb => "Jon Pulitano co-owner and Creative Director of Headcase Hair is one of Australia's most esteemed and innovative hair experts. Internationally he has worked closely with world-renowned hair specialists Luigi Mureno and Guido Palau, on the New York, London, Milan and Paris fashion circuits. The numerous shows he has worked on include: Marc Jacobs, Louis Vuitton, Prada, Miu Miu, Alexander McQueen, Rick Owens, Gucci, Givenchy, Valentino, Zac Posen, Versace, Roberto Cavalli, Proenza Schouler and Ralph Lauren"
)

Video.destroy_all
Video.create(
  :name => "The Woven Twist",
  :technique => "Styling",
  :embed_url => 'https://www.youtube.com/embed/VeWibWvSFOw',
  :url => "https://www.youtube.com/watch?v=VeWibWvSFOw",
  :blurb => "Jon Pulitano, Director of Headcase Hair in Paddington, creates a woven twist hair look for the Akira Isogawa show at the Art Gallery of NSW. Jon uses Redken products and provides a step by step look for creating the look.",
  :hairdresser_id => 2
)

Video.create(
  :name => "The Sleek Ponytail",
  :technique => "Styling",
  :embed_url => "https://www.youtube.com/embed/DGZ47-XDUfo?list=PL5CBdm_GIJVipSqU0vzuwoQQgsS-BcvbN",
  :url => "https://www.youtube.com/watch?v=DGZ47-XDUfo&list=PL5CBdm_GIJVipSqU0vzuwoQQgsS-BcvbN",
  :blurb => "Jon Pulitano, Director of Headcase Hair in Paddington, creates a sleek ponytail",
  :hairdresser_id => 2
)
