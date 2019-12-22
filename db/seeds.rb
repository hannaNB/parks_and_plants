# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
# Garden.destroy_all if Rails.env.development?
Plant.destroy_all if Rails.env.development?

puts 'Creating Gardens, plants...'

gardens_attributes = [
  {
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
  },
  {
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
  },
  {
  name: "Flower Garden",
  banner_url: "https://images.unsplash.com/photo-1544467168-9cf334a9ce56?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Palm tree Garden",
  banner_url: "https://images.unsplash.com/photo-1545289763-1a46ebc867ea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "White-petaled flowers Garden",
  banner_url: "https://images.unsplash.com/photo-1544467168-9cf334a9ce56?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Perspective Garden",
  banner_url: "https://images.unsplash.com/photo-1550948390-6eb7fa773072?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Trees near grass Garden",
  banner_url: "https://images.unsplash.com/photo-1554663565-f60b88adfa08?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Assorted-color plants Garden",
  banner_url: "https://images.unsplash.com/photo-1559749284-7a6971fd798e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Green leafed plant Garden",
  banner_url: "https://images.unsplash.com/photo-1563714193017-5a5fb60bc02b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Wooden Garden",
  banner_url: "https://images.unsplash.com/photo-1506941433945-99a2aa4bd50a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Purple flower Garden",
  banner_url: "https://images.unsplash.com/photo-1558293842-c0fd3db86157?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Green palm trees Garden",
  banner_url: "https://images.unsplash.com/photo-1547322268-f6935f1ae1e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Green and brown Garden",
  banner_url: "https://images.unsplash.com/photo-1557932937-1b5843aa7968?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Pink and white flowers Garden",
  banner_url: "https://images.unsplash.com/photo-1549276755-1bbd36282c6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Green and brown Garden",
  banner_url: "https://images.unsplash.com/photo-1547389432-95b8f3c47f3c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Grey and white Garden",
  banner_url: "https://images.unsplash.com/photo-1557429287-b2e26467fc2b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Assorted flowers Garden",
  banner_url: "https://images.unsplash.com/photo-1463554050456-f2ed7d3fec09?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Green-leafed plant Garden",
  banner_url: "https://images.unsplash.com/photo-1544727219-d2ff78f0f148?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Green vine plants on arc Garden",
  banner_url: "https://images.unsplash.com/photo-1571192776145-9f563c1df686?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Under trees Garden",
  banner_url: "https://images.unsplash.com/photo-1561198363-4990b6d4c4b4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Green grass Garden",
  banner_url: "https://images.unsplash.com/photo-1559766569-d4a07c40fcce?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Pink petaled flowers Garden",
  banner_url: "https://images.unsplash.com/photo-1470755008296-2939845775eb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  },
  {
  name: "Orange petaled flowers Garden",
  banner_url: "https://images.unsplash.com/photo-1490750967868-88aa4486c946?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"
  }
]
Garden.create!(gardens_attributes)

plants_attributes = [
    {
      name: "Alder",
      specie: "Alnus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Black alder",
      specie: "Alnus glutinosa, Ilex verticillata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Common alder",
      specie: "Alnus glutinosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "False alder",
      specie: "Ilex verticillata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Gray alder",
      specie: "Alnus incana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Speckled alder",
      specie: "Alnus incana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Striped alder",
      specie: "Ilex verticillata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "White alder",
      specie: "Alnus incana, Ilex verticillata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Almond",
      specie: "Prunus amygdalus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Tall ambrosia",
      specie: "Ambrosia trifida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Amy root",
      specie: "Apocynum cannabinum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Apple",
      specie: "Malus domestica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "apple",
      specie: "Maclura pomifera",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Apple of Sodom",
      specie: "Solanum carolinense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Apricot",
      specie: "Prunus armeniaca",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Arfaj",
      specie: "Rhanterium epapposum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Arizona sycamore",
      specie: "Platanus wrighitii",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Arrowwood",
      specie: "Cornus florida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Indian arrowwood",
      specie: "Cornus florida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Ash",
      specie: "Fraxinus spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Black ash",
      specie: "Acer negundo, Fraxinus nigra",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Blue ash",
      specie: "Fraxinus pennsylvanica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Cane ash",
      specie: "Fraxinus americana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Green ash",
      specie: "Fraxinus pennsylvanica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Maple ash",
      specie: "Acer negundo",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Red ash",
      specie: "Fraxinus pennsylvanica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "River ash",
      specie: "Fraxinus pennsylvanica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Swamp ash",
      specie: "Fraxinus pennsylvanica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "White ash",
      specie: "Fraxinus americana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Water ash",
      specie: "Acer negundo, Fraxinus pennsylvanica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Azolla",
      specie: "Azolla",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Carolina azolla",
      specie: "Azolla caroliniana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bamboo",
      specie: "Bambuseae",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Banana",
      specie: "mainly Musa × paradisica, but also other Musa species and hybrids",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Baobab",
      specie: "Adansonia",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bay",
      specie: "Laurus spp. or Umbellularia spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bay laurel",
      specie: "Laurus nobilis (culinary)",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "California bay",
      specie: "Umbellularia californica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bean",
      specie: "Fabaceae, specifically Phaseolus spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bearberry",
      specie: "Ilex decidua",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bear corn",
      specie: "Veratrum viride",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Beech",
      specie: "Fagus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Blue bindweed",
      specie: "Solanum dulcamara",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bird's nest",
      specie: "Daucus carota",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bird's nest plant",
      specie: "Daucus carota",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Birch",
      specie: "Betula spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Black birch",
      specie: "Betula lenta, Betula nigra",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bolean birch",
      specie: "Betula papyrifera",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Canoe birch",
      specie: "Betula papyrifera",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Cherry birch",
      specie: "Betula lenta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "European weeping birch",
      specie: "Betula pendula",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "European white birch",
      specie: "Betula pendula",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Gray birch",
      specie: "Betula alleghaniensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Mahogany birch",
      specie: "Betula lenta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Paper birch",
      specie: "Betula papyrifera",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Red birch",
      specie: "Betula nigra",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "River birch",
      specie: "Betula nigra, Betula lenta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Silver birch",
      specie: "Betula papyrifera",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Spice birch",
      specie: "Betula lenta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sweet birch",
      specie: "Betula lenta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Water birch",
      specie: "Betula nigra",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Weeping birch",
      specie: "Betula pendula",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "White birch",
      specie: "Betula papyrifera, Betula pendula",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Yellow birch",
      specie: "Betula alleghaniensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bittercress",
      specie: "Barbarea vulgaris, Cardamine bulbosa, Cardamine hirsuta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Hairy bittercress",
      specie: "Cardamine hirsuta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bittersweet",
      specie: "Solanum dulcamara",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Trailing bittersweet",
      specie: "Solanum dulcamara",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bitterweed",
      specie: "Any plant in the Ambrosia genus, specially Ambrosia artemisiifolia, Artemisia trifida, Helenium amarum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Blackberry",
      specie: "Rubus spp., Rubus pensilvanicus, Rubus occidentalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Hispid swamp blackberry",
      specie: "Rubus hispidus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Pennsylvania blackberry",
      specie: "Rubus pensilvanicus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Running swamp blackberry",
      specie: "Rubus hispidus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Black cap",
      specie: "Rubus occidentalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Black-eyed Susan",
      specie: "Rudbeckia hirta, Rudbeckia fulgida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Blackhaw",
      specie: "Viburnum prunifolium",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Blackiehead",
      specie: "Rudbeckia hirta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Black-weed",
      specie: "Ambrosia artemisiifolia",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Blueberry",
      specie: "Vaccinium (Cyanococcus) spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Blue-of-the-heavens",
      specie: "Allium caeruleum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bow-wood",
      specie: "Maclura pomifera",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Box",
      specie: "Buxus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "False box",
      specie: "Cornus florida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Boxelder",
      specie: "Acer negundo",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Boxwood",
      specie: "Buxus, Cornus florida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "False boxwood",
      specie: "Cornus florida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sand brier",
      specie: "Solanum carolinense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Brittlebush",
      specie: "Encelia farinosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Broadleaf",
      specie: "Plantago major",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Brown Betty",
      specie: "Rudbeckia hirta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Brown-eyed Susan",
      specie: "Rudbeckia hirta, Rudbeckia triloba",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Buckeye (California buckeye)",
      specie: "Aesculus californica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "buckeye",
      specie: "Aesculus spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Buffalo weed",
      specie: "Ambrosia trifida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Butterfly flower",
      specie: "Asclepias syriaca",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Butterfly weed",
      specie: "Asclepias tuberosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Cabbage",
      specie: "Brassica oleracea",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Clumpfoot cabbage",
      specie: "Symplocarpus foetidus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Meadow cabbage",
      specie: "Symplocarpus foetidus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Skunk cabbage",
      specie: "Symplocarpus foetidus, Lysichiton spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Swamp cabbage",
      specie: "Symplocarpus foetidus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "California bay",
      specie: "Umbellularia californica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "California buckeye",
      specie: "Aesculus californica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "California sycamore",
      specie: "Platanus racemosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "California walnut",
      specie: "Juglans californica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Canada root",
      specie: "Asclepias tuberosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Cancer jalap",
      specie: "Phytolacca americana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Carrot",
      specie: "Daucus carota",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Wild carrot",
      specie: "Daucus carota",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Carrot weed",
      specie: "Ambrosia artemisiifolia",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Cart track plant",
      specie: "Plantago major",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Catalina ironwood",
      specie: "Lyonothamnus floribundus ssp. floribundus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Cherry",
      specie: "Prunus spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Black cherry",
      specie: "Prunus serotina",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Cabinet cherry",
      specie: "Prunus serotina",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Rum cherry",
      specie: "Prunus serotina",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Whiskey cherry",
      specie: "Prunus serotina",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Wild cherry",
      specie: "Prunus avium, Prunus serotina",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Wild black cherry",
      specie: "Prunus serotina",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Chestnut",
      specie: "Castanea spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Chigger flower",
      specie: "Asclepias tuberosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Chrysanthemum",
      specie: "Dendranthema grandiflora, Chrysanthemum morifolium",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "(True) cinnamon",
      specie: "Cinnamomum verum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Clove",
      specie: "Syzygium aromaticum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Clover",
      specie: "Trifolium spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Coakum",
      specie: "Phytolacca americana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Coconut",
      specie: "Cocos nucifera",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Coffee plant",
      specie: "Coffea spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Colic weed",
      specie: "Corydalis flavula",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Collard",
      specie: "Symplocarpus foetidus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Hare's colwort",
      specie: "Sonchus oleraceus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Brilliant coneflower",
      specie: "Rudbeckia fulgida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Cutleaf coneflower",
      specie: "Rudbeckia laciniata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Eastern coneflower",
      specie: "Rudbeckia fulgida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Green-headed Coneflower",
      specie: "Rudbeckia laciniata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Orange coneflower",
      specie: "Rudbeckia fulgida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Tall coneflower",
      specie: "Rudbeckia laciniata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Thin-leaved Coneflower",
      specie: "Rudbeckia triloba",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Three-leaved Coneflower",
      specie: "Rudbeckia triloba",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Blueberry cornel",
      specie: "Cornus amomum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Silky cornel",
      specie: "Cornus amomum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "White cornel",
      specie: "Cornus florida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Cornelian tree",
      specie: "Cornus florida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Corydalis",
      specie: "Corydalis spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Fern-leaf Corydalis",
      specie: "Corydalis chelidoniifolia",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Golden corydalis",
      specie: "Corydalis aurea",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Pale corydalis",
      specie: "Corydalis flavula, Corydalis sempervirens",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Pink corydalis",
      specie: "Corydalis sempervirens",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Yellow corydalis",
      specie: "Corydalis lutea, Corydalis flavula",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Cotton plant",
      specie: "Gossypium",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Creeping yellowcress",
      specie: "Rorippa sylvestris",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Cress",
      specie: "(several genera)",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "American cress",
      specie: "Barbarea verna",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bank cress",
      specie: "Barbarea verna",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Belle Isle cress",
      specie: "Barbarea verna",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bermuda cress",
      specie: "Barbarea verna",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bulbous cress",
      specie: "Cardamine bulbosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Lamb's cress",
      specie: "Cardamine hirsuta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Land cress",
      specie: "Barbarea verna, Cardamine hirsuta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Scurvy cress",
      specie: "Barbarea verna",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Spring cress",
      specie: "Cardamine bulbosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Upland cress",
      specie: "Barbarea verna",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Crowfoot",
      specie: "Cardamine concatenata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Crow's nest",
      specie: "Daucus carota",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Crow's toes",
      specie: "Cardamine concatenata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Cucumber",
      specie: "Cucumis sativus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Brown daisy",
      specie: "Rudbeckia hirta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Common daisy, daisy",
      specie: "Bellis perennis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Gloriosa daisy",
      specie: "Rudbeckia hirta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Poorland daisy",
      specie: "Rudbeckia hirta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Yellow daisy",
      specie: "Rudbeckia hirta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Yellow ox-eye daisy",
      specie: "Rudbeckia hirta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Deadnettle",
      specie: "Lamium spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Henbit deadnettle",
      specie: "Lamium amplexicaule",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Spotted deadnettle",
      specie: "Lamium maculatum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Devil's bite",
      specie: "Veratrum viride",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Devil's darning needle",
      specie: "Clematis virginiana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Devil's nose",
      specie: "Clematis virginiana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Devil's plague",
      specie: "Daucus carota",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bristly dewberry",
      specie: "Rubus hispidus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Swamp dewberry",
      specie: "Rubus hispidus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Dindle",
      specie: "Sonchus arvensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Dogwood",
      specie: "Cornus spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "American dogwood",
      specie: "Cornus florida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Florida dogwood",
      specie: "Cornus florida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Flowering dogwood",
      specie: "Cornus florida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Japanese flowering dogwood",
      specie: "Cornus kousa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Kousa dogwood",
      specie: "Cornus kousa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Drumstick",
      specie: "Moringa oleifera",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Pacific dogwood",
      specie: "Cornus nuttallii",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Silky dogwood",
      specie: "Cornus amomum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Swamp dogwood",
      specie: "Cornus amomum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Duck retten",
      specie: "Veratrum viride",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Duscle",
      specie: "Solanum nigrum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Dye-leaves",
      specie: "Ilex glabra",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Earth gall",
      specie: "Veratrum viride",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "English bull's eye",
      specie: "Rudbeckia hirta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Eucalyptus",
      specie: "Eucalyptus spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Extinguisher mo",
      specie: "Encalypta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Eytelia",
      specie: "Amphipappus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Fair-maid-of-France",
      specie: "Achillea ptarmica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Fellenwort",
      specie: "Solanum dulcamara",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Felonwood",
      specie: "Solanum dulcamara",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Felonwort",
      specie: "Solanum dulcamara",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Fennel",
      specie: "Foeniculum vulgare",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Boston fern or sword fern",
      specie: "Nephrolepis exaltata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Christmas fern",
      specie: "Polystichum acrostichoides",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Coast polypody",
      specie: "Polypodium scouleri",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Kimberly queen fern",
      specie: "Nephrolepis obliterata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Korean rock fern",
      specie: "Polystichum tsus-simense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Mosquito fern",
      specie: "Azolla caroliniana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sword ferns",
      specie: "Polystichum spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Water fern",
      specie: "Azolla caroliniana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Western sword fern",
      specie: "Polystichum munitum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Feverbush",
      specie: "Ilex verticillata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Feverfew",
      specie: "Tanacetum parthenium",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Fig",
      specie: "Ficus spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Common fig",
      specie: "Ficus carica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "European flax",
      specie: "Linum usitatissimum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "New Zealand flax",
      specie: "Phormium tenax, Phormium colensoi",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Fluxroot",
      specie: "Asclepias tuberosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Yellow fumewort",
      specie: "Corydalis flavula",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Gallberry",
      specie: "Ilex glabra",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Garget",
      specie: "Phytolacca americana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Golden garlic",
      specie: "Allium moly",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Wild garlic",
      specie: "Allium canadense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Garlic mustard",
      specie: "Alliaria petiolata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Garlic root",
      specie: "Alliaria petiolata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Dame's gilliflower",
      specie: "Hesperis matronalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Night scented gilliflower",
      specie: "Hesperis matronalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Queen's gilliflower",
      specie: "Hesperis matronalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Rogue's gilliflower",
      specie: "Hesperis matronalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Winter gilliflower",
      specie: "Hesperis matronalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Golden buttons",
      specie: "Tanacetum vulgare",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Goldenglow",
      specie: "Rudbeckia laciniata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Golden Jerusalem",
      specie: "Rudbeckia hirta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Gordaldo",
      specie: "Achillea millefolium",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Goose tongue",
      specie: "Achillea ptarmica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Grapefruit",
      specie: "Citrus × paradisi",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Grapevine",
      specie: "Vitis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Groundberry",
      specie: "Rubus hispidus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bristly groundberry",
      specie: "Rubus hispidus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Gutweed",
      specie: "Sonchus arvensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Haldi",
      specie: "Curcuma domestica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Rock harlequin",
      specie: "Corydalis sempervirens",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Yellow harlequin",
      specie: "Corydalis flavula",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Hay fever weed",
      specie: "Ambrosia artemisiifolia, Artemisia trifida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Healing blade",
      specie: "Plantago major",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Hedge plant",
      specie: "Maclura pomifera",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Hellebore",
      specie: "Helleborus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "American white hellebore",
      specie: "Veratrum viride",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Big hellebore",
      specie: "Veratrum viride",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Black hellebore",
      specie: "Veratrum nigrum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "European white hellebore",
      specie: "Veratrum album",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "False hellebore",
      specie: "Veratrum album, Veratrum viride",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Swamp hellebore",
      specie: "Veratrum viride",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "White hellebore",
      specie: "Veratrum album, Veratrum viride",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Hemp",
      specie: "Cannabis spp., specifically Cannabis sativa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Hemp dogbane",
      specie: "Apocynum cannabinum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Hen plant",
      specie: "Plantago major",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Herb barbara",
      specie: "Barbarea vulgaris",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Hogweed",
      specie: "Ambrosia artemisiifolia",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Holly",
      specie: "Ilex spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Deciduous holly",
      specie: "Ilex decidua, Ilex verticillata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "European holly",
      specie: "Ilex aquifolium",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Inkberry holly",
      specie: "Ilex glabra",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Meadow holly",
      specie: "Ilex decidua",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Swamp holly",
      specie: "Ilex decidua",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Winterberry holly",
      specie: "Ilex verticillata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Horse cane",
      specie: "Ambrosia trifida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Hound's berry",
      specie: "Solanum nigrum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Huckleberry",
      specie: "Vaccinium spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Evergreen huckleberry",
      specie: "Vaccinium ovatum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Trailing red huckleberry",
      specie: "Vaccinium parvifolium",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Houseleek",
      specie: "Sempervivum tectorum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Indian hemp",
      specie: "various genera",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Indian hemp",
      specie: "Apocynum cannabinum, Cannabis indica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "White Indian hemp",
      specie: "Asclepias incarnata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Indian paintbrush",
      specie: "Castilleja, Castilleja mutis, Asclepias tuberosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Indian posy",
      specie: "Asclepias tuberosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Inkberry",
      specie: "Ilex glabra, Phytolacca americana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Isle of Man cabbage",
      specie: "Coincya monensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Itchweed",
      specie: "Veratrum viride",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Ivy",
      specie: "Hedera spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Jack-by-the-hedge",
      specie: "Alliaria petiolata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Jack-in-the-bush",
      specie: "Alliaria petiolata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Juneberry",
      specie: "Amelanchier canadensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Juniper",
      specie: "Various species in the genus Juniperus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Keek",
      specie: "Rorippa sylvestris",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Kinnikinnik",
      specie: "Cornus amomum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Kousa",
      specie: "Cornus kousa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Kudzu",
      specie: "Pueraria lobata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Laceflower",
      specie: "Daucus carota",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Lamb's foot",
      specie: "Plantago major",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Lavender",
      specie: "Lavandula",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Leek",
      specie: "Allium",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Lemon",
      specie: "Citrus × limon",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Lettuce",
      specie: "Lactuca sativa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Lily leek",
      specie: "Allium moly",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Summer lilac",
      specie: "Hesperis matronalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Love vine",
      specie: "Clematis virginiana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Maize",
      specie: "Zea mays",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Mango",
      specie: "Mangifera indica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Maple",
      specie: "Acer",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Ash-leaved maple",
      specie: "Acer negundo",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Black maple",
      specie: "Acer nigrum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Creek maple",
      specie: "Acer saccharinum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Cutleaf maple",
      specie: "Acer negundo",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Maple ash",
      specie: "Acer negundo",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Moose maple",
      specie: "Acer pensylvanicum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Red river maple",
      specie: "Acer negundo",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "River maple",
      specie: "Acer saccharinum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Silver maple",
      specie: "Acer saccharinum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Silverleaf maple",
      specie: "Acer saccharinum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Soft maple",
      specie: "Acer saccharinum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Striped maple",
      specie: "Acer pensylvanicum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sugar maple",
      specie: "Acer saccharum (main use), Acer barbatum, Acer leucoderme,",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Swamp maple",
      specie: "Acer saccharinum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Water maple",
      specie: "Acer saccharinum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "White maple",
      specie: "Acer saccharinum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Mesquite",
      specie: "Prosopis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Honey mesquite",
      specie: "Prosopis glandulosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Screwbean mesquite",
      specie: "Prosopis pubescens",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Milfoil",
      specie: "Achillea millefolium",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Milkweed",
      specie: "Asclepias, Sonchus oleraceus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Blunt-leaved Milkweed",
      specie: "Asclepias amplexicaulis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Common milkweed",
      specie: "Asclepias syriaca",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Horsetail milkweed",
      specie: "Asclepias verticillata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Orange milkweed",
      specie: "Asclepias tuberosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Swamp milkweed",
      specie: "Asclepias incarnata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Rose milkweed",
      specie: "Asclepias incarnata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Whorled milkweed",
      specie: "Asclepias verticillata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Yellow milkweed",
      specie: "Asclepias tuberosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Milky tassel",
      specie: "Sonchus oleraceus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Moosewood",
      specie: "Acer pensylvanicum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Petty morel",
      specie: "Solanum nigrum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Mosquito plant",
      specie: "Azolla caroliniana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Mother-of-the-evening",
      specie: "Hesperis matronalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Mountain mahogany",
      specie: "Betula lenta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Mulberry",
      specie: "Morus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Red mulberry",
      specie: "Morus rubra",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "White mulberry",
      specie: "Morus alba",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Flowering Dogwood",
      specie: "Cornus florida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Neem",
      specie: "Azadirachta indica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bull nettle",
      specie: "Solanum carolinense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Carolina horse nettle",
      specie: "Solanum carolinense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Horse nettle",
      specie: "Solanum carolinense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "American nightshade",
      specie: "Phytolacca americana, Solanum americanum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bitter nightshade",
      specie: "Solanum dulcamara",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Black nightshade",
      specie: "Solanum nigrum, Solanum americanum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Climbing nightshade",
      specie: "Solanum dulcamara",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Deadly nightshade",
      specie: "Solanum nigrum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Garden nightshade",
      specie: "Solanum nigrum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Trailing nightshade",
      specie: "Solanum dulcamara",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Trailing violet nightsh",
      specie: "Solanum dulcamara",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Woody nightshade",
      specie: "Solanum dulcamara",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Nosebleed",
      specie: "Achillea millefolium",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Blue oak",
      specie: "Quercus douglasii",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bur oak",
      specie: "Quercus macrocarpa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Champion oak",
      specie: "Quercus rubra",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Coast live oak",
      specie: "Quercus agrifolia",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Cork oak",
      specie: "Quercus suber",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Dyer's oak",
      specie: "Quercus velutina",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Eastern black oak",
      specie: "Quercus velutina'",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "English oak",
      specie: "Quercus robur",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Island oak",
      specie: "Quercus. tomentella",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Mirbeck's oak",
      specie: "Quercus canariensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Mossycup white oak",
      specie: "Quercus macrocarpa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Northern red oak",
      specie: "Quercus rubra",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Pedunculate oak",
      specie: "Quercus robur",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Pin oak",
      specie: "Quercus palustris",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Red oak",
      specie: "Quercus rubra, Quercus coccinea",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Scarlet oak",
      specie: "Quercus coccinea",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Scrub oak",
      specie: "Quercus macrocarpa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sessile oak",
      specie: "Quercus petraea",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Spanish oak",
      specie: "Quercus coccinea, Quercus rubra",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Spotted oak",
      specie: "Quercus velutina",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Swamp oak",
      specie: "Quercus palustris, Quercus bicolor",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Swamp Spanish oak",
      specie: "Quercus palustris",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Swamp white oak",
      specie: "Quercus bicolor",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Valley oak",
      specie: "Quercus lobata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "White oak",
      specie: "Quercus alba",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Yellowbark oak",
      specie: "Quercus velutina",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Olive",
      specie: "Olea europaea",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Onion",
      specie: "Allium",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Common onion",
      specie: "Allium cepa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Giant onion",
      specie: "Allium giganteum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Nodding onion",
      specie: "Allium cernuum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Tree onion",
      specie: "Allium canadense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Wild onion",
      specie: "Allium canadense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Osage orange",
      specie: "Maclura pomifera",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "sweet orange",
      specie: "Citrus × sinensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Wild orange",
      specie: "Maclura pomifera",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Orange-root",
      specie: "Asclepias tuberosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Osage",
      specie: "Maclura pomifera",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Red osier",
      specie: "Cornus amomum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Parsley",
      specie: "Petroselinum crispum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Parsnip",
      specie: "Pastinaca sativa, Daucus carota",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Pea",
      specie: "Pisum sativum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Peach",
      specie: "Prunus persica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Peanut",
      specie: "Arachis hypogaea",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Pear",
      specie: "Pyrus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Bastard pellitory",
      specie: "Achillea ptarmica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "European pellitory",
      specie: "Achillea ptarmica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Wild pellitory",
      specie: "Achillea ptarmica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Penny hedge",
      specie: "Alliaria petiolata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Pepper root",
      specie: "Cardamine concatenata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Pigeon berry",
      specie: "Phytolacca americana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Pine",
      specie: "Pinus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Pineapple",
      specie: "Ananas comosus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Pistachio",
      specie: "Pistacia vera",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Plane (European sycamore)",
      specie: "Platanus acerifolia",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Broadleaf plantain",
      specie: "Plantago major",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Common plantain",
      specie: "Plantago major",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Dooryard plantain",
      specie: "Plantago major",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Greater plantain",
      specie: "Plantago major",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Roundleaf plantain",
      specie: "Plantago major",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Wayside plantain",
      specie: "Plantago major",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Pleurisy root",
      specie: "Asclepias tuberosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Pocan bush",
      specie: "Phytolacca americana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Poison ivy",
      specie: "Toxicodendron radicans",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Poisonberry",
      specie: "Solanum dulcamara",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Poisonflower",
      specie: "Solanum dulcamara",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Poke",
      specie: "Phytolacca americana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Indian poke",
      specie: "Veratrum viride",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Pokeroot",
      specie: "Phytolacca americana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Pokeweed",
      specie: "Phytolacca americana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Polkweed",
      specie: "Symplocarpus foetidus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Polecat weed",
      specie: "Symplocarpus foetidus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Poor Annie",
      specie: "Veratrum viride",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Poor man's mustard",
      specie: "Alliaria petiolata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Poplar",
      specie: "Populus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Poppy",
      specie: "Papaveraceae",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Possumhaw",
      specie: "Ilex decidua",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Potato",
      specie: "Solanum tuberosum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Pudina",
      specie: "Mentha indica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Queen Anne's lace",
      specie: "Daucus carota, Anthriscus sylvestris",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Quercitron",
      specie: "Quercus velutina",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Radical weed",
      specie: "Solanum carolinense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Ragweed",
      specie: "Ambrosia",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Common ragweed",
      specie: "Ambrosia artemisiifolia",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Giant ragweed",
      specie: "Ambrosia trifida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Great ragweed",
      specie: "Ambrosia trifida",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Ragwort",
      specie: "Senecio",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Common ragwort",
      specie: "Senecio jacobaea",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Hoary ragwort",
      specie: "Senecio erucifolius",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Marsh ragwort",
      specie: "Senecio aquaticus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Oxford ragwort",
      specie: "Senecio squalidus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Silver ragwort",
      specie: "Senecio cineraria",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Rantipole",
      specie: "Daucus carota",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Rapeseed",
      specie: "Brassica napus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Raspberry",
      specie: "Rubus (Idaeobatus) spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Black raspberry",
      specie: "Rubus occidentalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Purple raspberry",
      specie: "Rubus occidentalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Redbrush",
      specie: "Cornus amomum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Redbud",
      specie: "Cercis spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Eastern redbud",
      specie: "Cercis canadensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Western redbud",
      specie: "Cercis occidentalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Judas-tree",
      specie: "Cercis siliquastrum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Red ink plant",
      specie: "Phytolacca americana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Redweed",
      specie: "Phytolacca americana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Rheumatism root",
      specie: "Apocynum cannabinum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Rhubarb",
      specie: "Rheum rhabarbarum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Ribwort",
      specie: "Plantago major",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Asian rice",
      specie: "Oryza sativa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "African rice",
      specie: "Oryza glaberrima",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Roadweed",
      specie: "Plantago major",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Rocket",
      specie: "(several genera)",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Dame's rocket",
      specie: "Hesperis matronalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sweet rocket",
      specie: "Hesperis matronalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Winter rocket",
      specie: "Barbarea vulgaris",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Yellow rocket",
      specie: "Barbarea vulgaris",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Rocketcress",
      specie: "Barbarea vulgaris",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Rose",
      specie: "Rosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Baby rose",
      specie: "Rosa multiflora",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Dwarf wild rose",
      specie: "Rosa virginiana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Low rose",
      specie: "Rosa virginiana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Multiflora rose",
      specie: "Rosa multiflora",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Prairie rose",
      specie: "Rosa virginiana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Rambler rose",
      specie: "Rosa multiflora",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Wild rose",
      specie: "Rosa virginiana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Rosemary",
      specie: "Rosmarinus officinalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Rye",
      specie: "Secale cereale",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Saffron crocus",
      specie: "Crocus sativus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sanguinary",
      specie: "Achillea millefolium",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sauce-alone",
      specie: "Alliaria petiolata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Scarlet berry",
      specie: "Solanum dulcamara",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Scoke",
      specie: "Phytolacca americana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Scotch cap",
      specie: "Rubus occidentalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Scrambled eggs",
      specie: "Corydalis aurea",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Scurvy grass",
      specie: "Barbarea verna",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Serviceberry",
      specie: "Amelanchier",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Common serviceberry",
      specie: "Amelanchier arborea",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Downy serviceberry",
      specie: "Amelanchier arborea",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Shadblow serviceberry",
      specie: "Amelanchier canadensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Shadblow",
      specie: "Amelanchier canadensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Shadbush",
      specie: "Amelanchier canadensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Silkweed",
      specie: "Asclepias syriaca",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Swamp silkweed",
      specie: "Asclepias incarnata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Virginia silkweed",
      specie: "Asclepias syriaca",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Skunkweed",
      specie: "Symplocarpus foetidus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Snakeberry",
      specie: "Solanum dulcamara",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Snowdrop",
      specie: "Galanthus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sorrel",
      specie: "Oxalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Redwood sorrel",
      specie: "Oxalis oregana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Corn speedwell",
      specie: "Veronica arvensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Wall speedwell",
      specie: "Veronica arvensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Spoolwood",
      specie: "Betula papyrifera",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Squaw bush",
      specie: "Cornus amomum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Stammerwort",
      specie: "Ambrosia artemisiifolia",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Star-of-Persia",
      specie: "Allium cristophii",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Stickweed",
      specie: "Ambrosia artemisiifolia",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Strawberry",
      specie: "Fragaria × ananassa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Strawberry tree",
      specie: "Arbutus unedo",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Strawberry tree 'Marina'",
      specie: "Madrone",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sugarcane",
      specie: "Saccharum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Orange swallow-wort",
      specie: "Asclepias tuberosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Silky swallow-wort",
      specie: "Asclepias syriaca",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sneezeweed",
      specie: "Achillea ptarmica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sneezewort",
      specie: "Achillea ptarmica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sunflower",
      specie: "Helianthus annuus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sugarplum",
      specie: "Amelanchier canadensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Soldier's woundwort",
      specie: "Achillea millefolium",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Stag bush",
      specie: "Viburnum prunifolium",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Orange swallow-wort",
      specie: "Asclepias tuberosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Silky swallow-wort",
      specie: "Asclepias syriaca",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sweet potato",
      specie: "Ipomoea batatas",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sweet potato vine",
      specie: "Ipomoea batatas",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Swinies",
      specie: "Sonchus oleraceus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sycamore",
      specie: "Platanus spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sycamore (California)",
      specie: "Platanus racemosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sycamore (Arizona)",
      specie: "Platanus wrighitii",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sycamore (American)",
      specie: "Platanus occidentalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Common tansy",
      specie: "Tanacetum vulgare",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "White tansy",
      specie: "Achillea ptarmica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Wild tansy",
      specie: "Ambrosia artemisiifolia",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Tea",
      specie: "Camellia sinensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Appalachian tea",
      specie: "Ilex glabra",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Thimbleberry",
      specie: "Rubus occidentalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Thimbleweed",
      specie: "Rudbeckia laciniata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Thousand-leaf",
      specie: "Achillea millefolium",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Thousand-seal",
      specie: "Achillea millefolium",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Tassel weed",
      specie: "Ambrosia artemisiifolia",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Thistle",
      specie: "(Several genera)",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Annual sow thistle",
      specie: "Sonchus oleraceus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "California thistle",
      specie: "Cirsium arvense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Canada thistle",
      specie: "Cirsium arvense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Corn thistle",
      specie: "Cirsium arvense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Corn sow thistle",
      specie: "Sonchus arvensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Creeping thistle",
      specie: "Cirsium arvense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Cursed thistle",
      specie: "Cirsium arvense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Field sow thistle",
      specie: "Sonchus arvensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Green thistle",
      specie: "Cirsium arvense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Hard thistle",
      specie: "Cirsium arvense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Hare's thistle",
      specie: "Sonchus oleraceus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Milk thistle",
      specie: "Sonchus oleraceus",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Nodding thistle",
      specie: "Carduus nutans L.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Perennial thistle",
      specie: "Cirsium arvense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Prickly thistle",
      specie: "Cirsium arvense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sharp-fringed sow Thistle",
      specie: "Sonchus asper",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Small-flowered Thistle",
      specie: "Cirsium arvense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Spiny sow thistle",
      specie: "Sonchus asper",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Spiny-leaved sow Thistle",
      specie: "Sonchus asper",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Swine thistle",
      specie: "Sonchus arvensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Tree sow thistle",
      specie: "Sonchus arvensis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Way thistle",
      specie: "Cirsium arvense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Thyme",
      specie: "Thymus, specifically Thymus vulgaris",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Tickleweed",
      specie: "Veratrum viride",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Tobacco plant",
      specie: "Nicotiana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Tomato",
      specie: "Solanum lycopersicum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Toothwort",
      specie: "Cardamine concatenata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Cutleaf toothwort",
      specie: "Cardamine concatenata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Purple-flowered Toothwort",
      specie: "Cardamine concatenata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Touch-me-not",
      specie: "Impatiens capensis, Impatiens pallida, Mimosa pudica, Cardamine hirsuta",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Traveller's joy",
      specie: "Clematis virginiana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Tread-softly",
      specie: "Solanum carolinense",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Tree tobacco",
      specie: "Nicotiana glauca",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Trillium",
      specie: "Trillium spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Western trillium",
      specie: "Trillium ovatum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Western wake robin",
      specie: "Trillium ovatum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "White trillium",
      specie: "Trillium grandiflorum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Tuber-root",
      specie: "Asclepias tuberosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Tulip",
      specie: "Tulipa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Tulsi",
      specie: "Ocimum santalum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Vanilla orchid",
      specie: "Vanilla",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Viburnum",
      specie: "Viburnum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Blackhaw viburnum",
      specie: "Viburnum prunifolium",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Leatherleaf viburnum",
      specie: "Viburnum rhytidophyllum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Violet",
      specie: "(several genera)",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "African violet",
      specie: "Saintpaulia species",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Damask violet",
      specie: "Hesperis matronalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Dame's violet",
      specie: "Hesperis matronalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Dog's-tooth-violet or dogtooth violet",
      specie: "Erythronium dens-canis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Violet bloom",
      specie: "Solanum dulcamara",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Virgin's bower",
      specie: "Clematis virginiana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Virginia virgin's bower",
      specie: "Clematis virginiana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Walnut (California walnut)",
      specie: "Juglans californica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Walnut",
      specie: "Juglans sp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Waybread",
      specie: "Plantago major",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Western redbud",
      specie: "Cercis occidentalis",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Wheat",
      specie: "Triticum spp.",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "White man's foot",
      specie: "Plantago major",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "White-root",
      specie: "Asclepias tuberosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Wild cotton",
      specie: "Apocynum cannabinum, Asclepias syriaca",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Wild hops",
      specie: "Clematis virginiana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Willow",
      specie: "Salix",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Coyote willow",
      specie: "Salix exigua",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Goodding willow",
      specie: "Salix gooddingii",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Red willow",
      specie: "Cornus amomum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Rose willow",
      specie: "Cornus amomum",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Windroot",
      specie: "Asclepias tuberosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Wineberry",
      specie: "Rubus phoenicolasius",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Winterberry",
      specie: "Ilex verticillata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "American winterberry",
      specie: "Ilex verticillata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Evergreen winterberry",
      specie: "Ilex glabra",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Virginia winterberry",
      specie: "Ilex verticillata",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Wintercress",
      specie: "Barbarea vulgaris",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Early wintercress",
      specie: "Barbarea verna",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Woodbine",
      specie: "Clematis virginiana",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Roman wormwood",
      specie: "Ambrosia artemisiifolia, Corydalis sempervirens",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Wound rocket",
      specie: "Barbarea vulgaris",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Yarrow",
      specie: "Achillea",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Common yarrow",
      specie: "Achillea millefolium",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Fernleaf yarrow",
      specie: "Achillea filipendulina",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Sneezewort yarrow",
      specie: "Achillea ptarmica",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Woolly yarrow",
      specie: "Achillea tomentosa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Yellow fieldcress",
      specie: "Rorippa sylvestris",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Yellowwood",
      specie: "Cladrastis lutea, Maclura pomifera",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Yellow coneflower",
      specie: "Echinacea paradoxa",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    },
    {
      name: "Zedoary",
      specie: "Curcuma zedoaria",
      plant_url: "https://images.unsplash.com/photo-1491147334573-44cbb4602074?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"
    }
]
Plant.create!(plants_attributes)

puts 'Finished!'
