"Oops" by Kunlin

The description of the player is "Some people call you Ivan the Fool, but you pay no attention to their rudeness."

The player is carrying a magic ball. The description of the magic ball is "Whenever you drop this, it rolls in the way you should go." 

After dropping the ball:
	if an unvisited room (called target location) is adjacent to the location:
		let way be the best route from the location to the target location;
		say "It rolls suggestively towards [the way]. You pick it up again before it can get too far ahead of you.";
	else:
		say "The ball rolls around uncertainly and then comes back to sit at your feet with such an apologetic air that you have to pick it back up.";
	now the player carries the ball.


The Deep Forest is a room. "Oops, you are lost in a deep forest. The trees grow so close together that you cannot see the moon or the sky, and no animals or small plants thrive on the ground. It seems dangerous around, so keep your eyes sharp...

and...

try to go somewhere.

wait...

there's a ball in your pocket!

"

Witch's Garden is west of the Deep Forest. "In this garden grow plants that eat insects and plants that eat birds. It is bordered by a bone fence, and the pavements are made of a giant's kneecaps. 

In the center of the garden is Witch's hut, which walks on chicken legs. Currently the hut is squatting on the ground.

A beautiful and tasteful plant is in Witch's Garden.

Some plants can even speak!

"


Witch's Hut is inside from Witch's Garden. "From in here, there is no evidence of the hut's chicken nature except that the wallpaper is made of yellow-white feathers." 

A gigantic mortar is in Witch's Hut. "One corner of the hut is taken up by the gigantic mortar, big enough to stand in." It is an enterable vehicle. The description of the gigantic mortar is "Witch flies around inside it whenever she is in too much of a hurry to make her hut walk."

Witch is a woman in Witch's Hut. "Witch sits at her work table, sewing symbols into a magic towel." The description of Witch is "Her teeth are made of iron and her eyes can see in the dark. Though she is old, her fingers are nimble, and she has forgotten nothing that she has ever seen."

Instead of entering the mortar in the presence of Witch:
	say "'Oh, I wouldn't do that, Foolish Ivan,' says Witch. 'Where it would take you, you're not ready to go.'"

Witch is carrying a magic towel. The description of the magic towel is "To judge by the spell worked into its fringes, this is a towel that can turn into a bridge across any river or chasm."



 

Test me with "look / take inventory / examine the ball / drop the ball / west / examine me / in / look at Amy / examine towel / drop ball / look at mortar / get in mortar".

