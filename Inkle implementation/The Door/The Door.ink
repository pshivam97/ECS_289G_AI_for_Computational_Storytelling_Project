VAR counter = 0
VAR kickCounter = 0
VAR rubFireplace = 0
VAR rubDesk = 0
VAR hasLadder = 0
VAR hasDoor = 0
VAR hasChair = 0
VAR hasShovel = 0
VAR hasMagicCoin = 0
VAR hasSecretKey = 0
VAR seenSecretRoom = 0
VAR drinkCounter = 0

-> main

=== main ===
Hello! Welcome to the old mansion.
Best of luck, hope you find your way to the trophy!
Enter the Game?
    + [Yes]
        -> TheStudyRoom
    + [No]
        -> main
-> DONE


=== TheStudyRoom ===
Welcome to the Study Room!
Description of the room:
1. There are no doors to on any of the wall!
2. There is a fireplace, bookshelf, desk and a ladder in the study room.
Look around, maybe you find some clues to escape from the room!
+ [Check out the study room.]
    -> StudyRoomActions
-> DONE

=== StudyRoomActions ===
Select Action:
    + [Rub desk]
        {
        - rubDesk == 0:
            ~ rubDesk = rubDesk +1
            This is a dusty old desk.
        - else:
            {
            - rubFireplace == 1 && rubDesk == 1:
                ~ hasDoor = 1
                Check inventory! You have a gift.
            - else:
                This is a dusty old desk.
            }
        }
        ++ [Go back]
            -> StudyRoomActions
    + [Pick up ladder]
        {
        - hasLadder == 0:
            ~ hasLadder = 1
            You picked up the ladder.
        - else:
            You already have the ladder.
        }
        ++ [Go back]
            -> StudyRoomActions
    + [Put down ladder]
        {
        - hasLadder == 1:
            ~ hasLadder = 0
            You put down the ladder.
        - else:
            You do not have the ladder in your inventory.
        }
        ++ [Go back]
            -> StudyRoomActions
    + [Check Inventory]
        {
        - hasLadder == 1:
            You have a ladder.
        }
        {
        - hasDoor == 1:
            You have a door.
        }
        ++ [Go back]
            -> StudyRoomActions
    + [Go to North wall]
        ++ [Rub fireplace]
        {
        - rubFireplace == 0:
            ~ rubFireplace = rubFireplace +1
            This is a dusty old Fireplace.
        - else:
            {
            - rubFireplace == 1 && rubDesk == 1:
                ~ hasDoor = 1
                Check inventory! You have a gift.
            - else:
                This is a dusty old Fireplace.
            }
        }
            +++ [Go back]
                -> StudyRoomActions
    + [Go to South wall]
        {
        - hasLadder == 1:
            You can use the ladder to look out the window!
            + [Look out the window]
                There is a beautiful garden outside.
                ++ [Go back]
                    -> StudyRoomActions
        - else:
            There is a window on the wall but it is quite high up. Look for something to reach it.
            + [Go back]
                ->StudyRoomActions
        }
    + [Go to East wall]
        There is nothing on the east wall.
            ++ [Go back]    
                -> StudyRoomActions
    + [Go to West wall]
        {
        - hasDoor == 1:
            There is nothing on the wall but you can use the door in the inventory to go through the wall.
            +[Use the door]
                -> LivingRoom
        - else:
            There is nothing on the wall. Look around, maybe you find some tools escape from this room.
            +[Go back]
                -> StudyRoomActions
        }
-> DONE
        
=== LivingRoom ===
Welcome to the Living room!
Look around! Try to escape this room. Remember, you want to win the trophy!
+ [Check out the living room.]
    -> LivingRoomActions
    
=== LivingRoomActions ===
Select Action:
    {
    - hasSecretKey == 1:
        + [Go to Secret Room]
            -> SecretRoom
    }
    + [Check Inventory]
        {
        - hasSecretKey == 1:
            You have the secret key. Use the secret key to access the secret room.
        -else:
            You do not have anything in inventory right now. Explore around and try to find some clues
        }
        ++ [Go back]
            -> LivingRoomActions
    + [Go to North Wall]
        There is a dusty bookshelf with some old books in it.
        ++ [Kick bookshelf]
            {
            - kickCounter == 0:
                ~ kickCounter = kickCounter + 1
                Books fell down, careful, you might unlock some secret.
            - else:
                {
                - kickCounter == 1:
                    ~ kickCounter = kickCounter + 1
                    Some more books fell down, you are persistent...
                -else:
                    {
                    -kickCounter == 2:
                        ~ kickCounter = kickCounter + 1
                        ~ hasSecretKey = 1
                        An old book fell down, it opened and you find something shiny! Its a key to the secret room! The key is in your inventory now.
                    - else:
                        There is nothing left to see here.
                    }
                }
            }
            +++ [Go back]
                    -> LivingRoomActions
    + [Go to South Wall]
        There is nothing on this wall. Explore more and try to uncover the SECRETS!!!
        ++ [Go back]
                    -> LivingRoomActions
    + [Go to East Wall]
        There is the door you used to enter the Living Room! Want to go back to the dusty study?
        ++ [Go to the Study room]
            -> TheStudyRoom
        ++ [Go back]
            -> LivingRoomActions
    + [Go to West Wall]
        {
        - seenSecretRoom < 4:
            There is nothing on the wall. But there is something different about this wall. Looks like there could be a door here. Explore more to know about the secrets of the wall!
            + [Go back]
            -> LivingRoomActions
        - else:
            Select the correct N-E-W-S pass-key to escape this room.
            + [QWEFGHASDRTY]
                Sorry this is the wrong pass-key. Try again.
                ++ [Go back]
                    -> LivingRoomActions
            + [RTYQWEFGHASD]
                Sorry this is the wrong pass-key. Try again.
                ++ [Go back]
                    -> LivingRoomActions
            + [QWERTYASDFGH]
                This is the correct pass-key!
                ++ [Go to Garden]
                    -> TheGarden
            + [ASDRTYFGHQWE]
                Sorry this is the wrong pass-key. Try again.
                ++ [Go back]
                    -> LivingRoomActions
        }
-> DONE
    
=== SecretRoom ===
Welcome to the secret room!
The secrets are really important, make sure to write them down.
+ [Check out the secret room]
    -> SecretRoomActions
-> DONE


=== SecretRoomActions ===
Select Action:
    + [Look North]
        ~ seenSecretRoom = seenSecretRoom + 1
        N-Key = QWE
        ++ [Go back]
            -> SecretRoomActions
    + [Look South]
        ~ seenSecretRoom = seenSecretRoom + 1
        S-Key = FGH
        ++ [Go back]
            -> SecretRoomActions
    + [Look East]
        ~ seenSecretRoom = seenSecretRoom + 1
        E-Key = RTY
        ++ [Go back]
            -> SecretRoomActions
    + [Look West]
        ~ seenSecretRoom = seenSecretRoom + 1
        W-Key = ASD
        ++ [Go back]
            -> SecretRoomActions
    + [Go back]
        -> LivingRoomActions
-> DONE


=== TheGarden ===
Welcome to the garden!!
There is a fountain of water in the center of the garden....
Look around, explore. Remember, your goal is to get the winning trophy!
+ [Check out the Garden]
    -> GardenActions
-> DONE

=== GardenActions ===
Select Action:
    + [Drink water from fountain]
        {
        - drinkCounter == 0:
            ~ drinkCounter = drinkCounter + 1
            Yumm! Looks like fresh water. This certainly quenched the thirst of the tired player! But this does not look like an ordinary fountain...
            + [Go back]
                -> GardenActions
        - else:
            ~ drinkCounter = drinkCounter + 1
            A voice form fountain: I am not just an ordinary fountain! I am a magic fountain.
            {
            - hasMagicCoin == 0:
                Look around, maybe you will find something I need...
                +[Go back]
                    -> GardenActions
            - else:
                Looks like you have the Magic coin I am looking for. Give me the coin and you shall get what you seek...
                + [Put the magic coin in the fountain]
                    -> GetTrophy
            }
        }
    + [Go North]
        There is nothing to see here. Maybe explore more of the garden to get tools and clues to the trophy!!!
        ++ [Go back]
            -> GardenActions
    + [Go East]
        There is nothing to see here. Maybe explore more of the garden to get tools and clues to the trophy!!!
        ++ [Go back]
            -> GardenActions
    + [Go West]
        {
        - hasShovel == 0:
            There is a shovel at the west end of the Garden. You should collect all such tools to help you get the trophy!
            + [Pick up shovel]
                ~ hasShovel = 1
                You have picked up the shovel and have it in your inventory.
                ++ [Go back]
                    -> GardenActions
        - else:
            There is nothing here. Explore more to get more clues.
        }
        ++ [Go back]
            -> GardenActions
    + [Go South]
        {
        - hasShovel == 0:
            There is a sign on the wall saying: "DIG HERE".
            Wonder if there was such a tool to do that... Explore the garden more to find more clues related to this.
        - else:
            {
            - hasMagicCoin == 1:
                There is nothing here now. Just an empty treasure box...
            - else:
                There is a sign on the wall saying: "DIG HERE". You can use your shovel to dig near the wall!
                + [Use shovel to dig]
                    -> ShovelActions
            }
        }
        ++ [Go back]
            -> GardenActions
-> DONE


=== ShovelActions ===
You go on digging and finally find a treasure box!
You open the box and there is a shining Magic coin in it.
~ hasMagicCoin = 1
You now own a Magic coin! See if it is helpful in your quest to get the trophy.
+ [Go back]
    -> GardenActions
->DONE

=== GetTrophy ===
Hahahahohoho!!
Thank you for the magic coin! I know what you have been looking for all this while!
Here, take your prize and win the game!!
(A gold trophy emerges from the fountain water...)
+ [Pick up the trophy]
    You win the adventure game!!!
    
-> END

