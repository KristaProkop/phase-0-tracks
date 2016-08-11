conference = {
	seminar: {
		pretty_name: 'The Important Seminar',
		tickets: {
			members: 500,
			non_members: 100
		}, 
		
	},
	speakers: [
		"Bob Bones",
		"Anita Piesapie",
		"Johnny Deppleseed"
	],
	dinner: {
		pretty_name: 'Cocktail Hour and Dinner',
		tickets: {
			members: 200,
			non_members: 100
		},
		entrees: [
			"Filet Mignon",
			"Roast Turkey",
			"Filet of Sole",
			"Vegetarian Vegetables in Veggie Sauce"
		],
		drink_ticket_options: [
			2,
			4,
			"open bar"
		],
	}
}


p "There are #{conference[:seminar][:tickets][:members]} tickets available for members to attend #{conference[:seminar][:pretty_name]}"
p "The speaker I'm most looking forward to is #{conference[:speakers][1]}."
p "Dinner options are #{conference[:dinner][:entrees]}."
p "If you'd like to drink until you pass out, the drink option best suited for you is #{conference[:dinner][:drink_ticket_options][2]}."