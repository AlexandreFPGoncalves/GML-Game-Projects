/// @description Movement & Animation
if(!isTalking) {
    if(keyboard_check(ord("D")) && place_free(x + playerSpeed, y)) //Checks to see if the player is pressing down on D, if they are, do the actions inside
    {
        x += playerSpeed; //Move the player right by a certain amount of pixels per step, emulating movement
        image_speed = playerSpeed / (room_speed/2.5); //Keep the animation of the player walking smooth and even
        sprite_index = sprSaraWalkRight; //Choose which sprite to select while walking right
    }
    if(keyboard_check(ord("W")) && place_free(x, y - playerSpeed))
    {
        y -= playerSpeed;
        image_speed = playerSpeed / (room_speed/2.5);
        sprite_index = sprSaraWalkUp;
    }
    if(keyboard_check(ord("A")) && place_free(x - playerSpeed, y))
    {
        x -= playerSpeed;
        image_speed = playerSpeed / (room_speed/2.5);
        sprite_index = sprSaraWalkLeft;
    }
    if(keyboard_check(ord("S")) && place_free(x, y + playerSpeed))
    {
        y += playerSpeed;
        image_speed = playerSpeed / (room_speed/2.5);
        sprite_index = sprSaraWalkDown;
    }
    //Check to see when the player isn't pressing down one of these keys, and make it so the character stands still
    if(keyboard_check_released(ord("D")) || keyboard_check_released(ord("W")) || keyboard_check_released(ord("A")) || keyboard_check_released(ord("S")))
    {
        image_speed = 0;
        image_index = 0;
    }
}

///Collision Detection
//Checks if she's colliding with a robot around her and not alrady talking
if(collision_circle(x, y, 64, objRobot, true, true) && !isTalking) {
    //If so, and they press space, begin a conversation
    if(keyboard_check_pressed(vk_space)) {
        //Set the global variable messageGiver
        messageGiver = collision_circle(x, y, 64, objRobot, true, true);
        //Set the global variable PCTalking
        PCTalking = self;
        //Set to true, so she can't move
        isTalking = true;
        //Default values of index1, index2
        index1 = 0;
        index2 = 0;
        //Call the script
        scrDialogue();
    }
}

///Conversation Checks
if(isTalking) {
    //While chatting, if player chooses the bite me option, set that variable to true
    if(index1 == 02 && messageGiver.object_index == objRobot && currentChoice == 0)
        bitMe = true;
    else if(index1 == 02 && messageGiver.object_index == objRobot && currentChoice == 1)
        bitMe = false;
}
//Then act on that information after the conversation
if(bitMe && !isTalking) {
    show_message("You bit me!");
    bitMe = false;
}

