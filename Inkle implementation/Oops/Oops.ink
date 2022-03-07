VAR stageNumber = 0

-> main

=== main ===
The Deep Forest
Oops, you are lost in a deep forest. The trees grow so close together that you cannot see the moon or the sky, and no animals or small plants thrive on the ground. It seems dangerous around, so keep your eyes sharp...
and...
try to go somewhere.
wait...
there's a ball in your pocket!
+ [Check out the Dark Forest.]
    -> forestActions
-> DONE


=== forestActions ===
Select Actions:
+ [Who am I?]
    Some people call you Ivan the Fool, but you pay no attention to their rudeness.
    ++ [Go back]
        -> forestActions
+ [What is the use of this ball?]
    Whenever you drop this, it rolls in the way you should go.
    ++ [Go back]
        -> forestActions
+ [Drop the ball]
    -> ballDrop
+ [Go North]
    There is nothing but a deep dark forest in this direction. Explore other sides to make progress.
    ++ [Go back]
        -> forestActions
+ [Go South]
    There is nothing but a deep dark forest in this direction. Explore other sides to make progress.
    ++ [Go back]
        -> forestActions
+ [Go East]
    There is nothing but a deep dark forest in this direction. Explore other sides to make progress.
    ++ [Go back]
        -> forestActions
+ [Go West]
    There is a garden in the West!
    Looks very spooky...
    ++ [Go to Garden]
        -> witchGarden
-> DONE


=== ballDrop ===
{
- stageNumber == 0:
    The ball rolls suggestively towards west. You pick it up again before it can get too far ahead of you.
    + [Go back]
        -> forestActions
    - else:
        {
        - stageNumber == 1:
            The ball rolls suggestively towards inside. You pick it up again before it can get too far ahead of you.
            + [Go back]
                -> gardenActions
        - else:
            The ball rolls around uncertainly and then comes back to sit at your feet with such an apologetic air that you have to pick it back up.
            + [Go back]
                -> hutActions
        }
}
->DONE


=== witchGarden ===
In this garden grow plants that eat insects and plants that eat birds. It is bordered by a bone fence, and the pavements are made of a giant's kneecaps.
In the center of the garden is Witch's hut, which walks on chicken legs. Currently the hut is squatting on the ground.
A beautiful and tasteful plant is in Witch's Garden.
Some plants can even speak!
+ [Check out the Witch's Garden.]
    -> gardenActions
-> DONE


=== gardenActions ===
Select Actions:
+ [Drop the ball]
    ~ stageNumber = 1
    -> ballDrop
+ [Enter Witch's hut]
    ->witchHut
-> DONE


=== witchHut ===
From in here, there is no evidence of the hut's chicken nature except that the wallpaper is made of yellow-white feathers.
One corner of the hut is taken up by the gigantic mortar, big enough to stand in.
Witch sits at her work table, sewing symbols into a magic towel.
Her teeth are made of iron and her eyes can see in the dark. Though she is old, her fingers are nimble, and she has forgotten nothing that she has ever seen.
+ [Check out the Witch's Hut.]
    -> hutActions
-> DONE


=== hutActions ===
Select Actions:
+ [Drop the ball]
    ~ stageNumber = 2
    -> ballDrop
+ [Examine the mortar]
    Oh, I wouldn't do that, Foolish Ivan,' says Witch. 'Where it would take you, you're not ready to go.
    ++ [Go back]
        -> hutActions
+ [Examine the magic towel]
    To judge by the spell worked into its fringes, this is a towel that can turn into a bridge across any river or chasm.
    ++ [Go back]
        ->hutActions
    ++ [End Story]
        ->ending
->DONE


=== ending ===
Bye Ivan! You are not a fool afterall...
->END

