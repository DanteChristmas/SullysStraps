# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Status enums
		STATUS = { :available => 0, :hold => 1, :sold => 2, :unavailable => 3 }
	
	#Category enums
		CATEGORY = { :vintage => 0, :new => 1, :merch => 3 }
		strapDescription = "Style:	Western Rein
Width:	Almost 3/4\".
Leather:	Super prime stuff. Butter soft with an appearance that mirrors the shoulder piece.
Distressed Level:	Medium. Some color shading and a few age marks.
Notables:	The top edge was originally dressed and burnished. I skived the thickness to 3/16\" then dressed and burnished the exposed edges and slicked the underside of the rein. It's a pleasure to handle this one."
		shoulderDescription = "Size:	12 3/4\" long by 3 3/4\" wide where is will ride your shoulder tapering to 2 1/2\" on each end.
Leather:	Firm, solid leather with nice flexibility and plenty of real estate to spread out the load.
Stitching:	Artificial sinew hand sewn into the original needle holes.
Distressed Level:	Medium. Nothing you wouldn't expect to see on an old guitar strap.
Notables:	The lighter color on each end was originally covered by other leather and protected from the original finish and weather. The custom cut and shaped strap slots and the strap guide in the center grip the rein strap snug and it won't slide thru the shoulder piece without intentional help."
	begin
		strapDescription.encode("UTF-8")
		shoulderDescription.encode("UTF-8")
	rescue Encoding::UndefinedConversionError
	
	end
Product.create([
	{
			price: 140.00,
			category: CATEGORY[:vintage],
			status: STATUS[:available],
			name: "Guitar/Banjo  747",
			shoulder_description: strapDescription,
			strap_description: shoulderDescription,
			sub_section: "banjo",
			img_url: "v_strap1"
	},
	{
			price: 140.00,
			category: CATEGORY[:vintage],
			status: STATUS[:available],
			name: "Mandolin  747",
			shoulder_description: strapDescription,
			strap_description: shoulderDescription,
			sub_section: "mandolin",
			img_url: "v_strap2"
	},
	{
			price: 140.00,
			category: CATEGORY[:vintage],
			status: STATUS[:available],
			name: "Guitar/Banjo  800",
			shoulder_description: strapDescription,
			strap_description: shoulderDescription,
			sub_section: "banjo",
			img_url: "v_strap3"
	},
	{
			price: 140.00,
			category: CATEGORY[:vintage],
			status: STATUS[:sold],
			name: "Guitar/Banjo  800",
			shoulder_description: strapDescription,
			strap_description: shoulderDescription,
			sub_section: "banjo",
			img_url: "v_strap3"
	},
	{
			price: 140.00,
			category: CATEGORY[:vintage],
			status: STATUS[:sold],
			name: "Guitar/Banjo  800",
			shoulder_description: strapDescription,
			strap_description: shoulderDescription,
			sub_section: "banjo",
			img_url: "v_strap3"
	},
	{
			price: 140.00,
			category: CATEGORY[:vintage],
			status: STATUS[:available],
			name: "Guitar/Banjo  800",
			shoulder_description: strapDescription,
			strap_description: shoulderDescription,
			sub_section: "banjo",
			img_url: "v_strap3"
	},
	{
			price: 140.00,
			category: CATEGORY[:vintage],
			status: STATUS[:available],
			name: "Guitar/Banjo  800",
			shoulder_description: strapDescription,
			strap_description: shoulderDescription,
			sub_section: "banjo",
			img_url: "v_strap3"
	},
	{
			price: 140.00,
			category: CATEGORY[:vintage],
			status: STATUS[:available],
			name: "Guitar/Banjo  800",
			shoulder_description: strapDescription,
			strap_description: shoulderDescription,
			sub_section: "banjo",
			img_url: "v_strap3"
	},
	{
			price: 140.00,
			category: CATEGORY[:vintage],
			status: STATUS[:available],
			name: "Guitar/Banjo  800",
			shoulder_description: strapDescription,
			strap_description: shoulderDescription,
			sub_section: "banjo",
			img_url: "v_strap3"
	},
	{
			price: 140.00,
			category: CATEGORY[:vintage],
			status: STATUS[:available],
			name: "Guitar/Banjo  800",
			shoulder_description: strapDescription,
			strap_description: shoulderDescription,
			sub_section: "banjo",
			img_url: "v_strap3"
	},
	{
			price: 140.00,
			category: CATEGORY[:vintage],
			status: STATUS[:unavailable],
			name: "Guitar/Banjo  800",
			shoulder_description: strapDescription,
			strap_description: shoulderDescription,
			sub_section: "banjo",
			img_url: "v_strap3"
	},
	{
			price: 140.00,
			category: CATEGORY[:vintage],
			status: STATUS[:unavailable],
			name: "Guitar/Banjo  800",
			shoulder_description: strapDescription,
			strap_description: shoulderDescription,
			sub_section: "banjo",
			img_url: "v_strap3"
	},
	{
			price: 140.00,
			category: CATEGORY[:vintage],
			status: STATUS[:unavailable],
			name: "Guitar/Banjo  800",
			shoulder_description: strapDescription,
			strap_description: shoulderDescription,
			sub_section: "banjo",
			img_url: "v_strap3"
	},
	{
			price: 140.00,
			category: CATEGORY[:vintage],
			status: STATUS[:unavailable],
			name: "Guitar/Banjo  800",
			shoulder_description: strapDescription,
			strap_description: shoulderDescription,
			sub_section: "banjo",
			img_url: "v_strap3"
	},
	{
			price: 140.00,
			category: CATEGORY[:vintage],
			status: STATUS[:unavailable],
			name: "Guitar/Banjo  800",
			shoulder_description: strapDescription,
			strap_description: shoulderDescription,
			sub_section: "banjo",
			img_url: "v_strap3"
	}
])
