Image.create!([
  {url: "http://s.glbimg.com/po/tt/f/original/2013/07/02/positivo3.jpeg", product_id: 1},
  {url: "http://www.positivobgh.com/files/metatags/57ec15654192cEMPRESAS-NOTEBOOKS-SERIEZ", product_id: 1},
  {url: "http://mla-s2-p.mlstatic.com/596521-MLA20800832014_072016-Y.jpg", product_id: 1},
  {url: "http://uzuriky.com/local/cache-vignettes/L964xH800/img-20160208-wa0009-04f50.jpg", product_id: 2},
  {url: "http://uzuriky.com/local/cache-vignettes/L1192xH800/img-20160210-wa0013-c5fc9.jpg", product_id: 2},
  {url: "http://images.idakoos.com/B0457TC2BL0000017270101010040ORCR00AFA,sex-machine-made-in-rwanda.jpg", product_id: 3},
  {url: "http://images.idakoos.com/B0187SC2WH0000018230101010040BLVR00AFA,rwanda-sex-machine-factory.jpg", product_id: 3},
  {url: "https://s-media-cache-ak0.pinimg.com/564x/a0/84/ae/a084ae2dcf6f90bc3497b3ba2e73dc9f.jpg", product_id: 4},
  {url: "https://img1.etsystatic.com/117/0/10500965/il_570xN.888495473_ii6s.jpg", product_id: 4},
  {url: "http://www.africafashionguide.com/wp-content/uploads/2014/11/64215_332973163513344_1796816791_n.jpg?w=640", product_id: 5}
])
Product.create!([
  {name: "Positivo", price: "200000.0", description: "nicest and cheapest computer that have ever built in Rwanda.", supplier_id: 1, status: nil},
  {name: "Shoes", price: "10000.0", description: "look smart and wear made in rwanda shoes", supplier_id: 2, status: nil},
  {name: "Pullover", price: "7000.0", description: "look sexy by dressing made in rwanda pullover. Just try and look stylish", supplier_id: 3, status: nil},
  {name: "Fruit bowls", price: "3000.0", description: "make your sitting room look beautiful by just having this fruit bowls on your tables", supplier_id: 4, status: nil},
  {name: "Afro Shoes", price: "12000.0", description: "support africa by supporting Made In Rwanda products. you need to look stunning with this afro shoes", supplier_id: 2, status: nil}
])
Supplier.create!([
  {name: "Postivo BGH", email: "inforwanda@positivobgh.com", phone: "1033"},
  {name: "Uzuri K&Y", email: "info@uzuriky.com", phone: "(+250)788944960"},
  {name: "Idakoos", email: "customer@idakoos.com", phone: "(305) 407-3847"},
  {name: "To The Market", email: "support@tothemarket.com", phone: "0725085564"}
])
User.create!([
  {name: "Joseph Mugwaneza", email: "muganezajoseph@gmail.com", password_digest: "$2a$10$rMsmqt0S8cU/nKG/odIr5efF2jzQTdPXxAMieNuPH.5i1U/1V.bOS"},
  {name: "Joseph Mugwaneza", email: "muganezajoseph@gmail.com", password_digest: "$2a$10$5Hrk3dZZwNGYt42dE1vnFOmiaVvKjX28INh1ht3E24CmbKipqIZqe"}
])
