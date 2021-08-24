/// @description Create choices for player
for(i = 1; i < array_length_2d(messageGiver.myDialogue, index1); ++i) {
    ++index2; //index2 is the options for the player, since it began at 0 which was the NPC's dialogue, we increment to begin and then each time
    choiceBox[i - 1] = instance_create((i * 210), __view_get( e__VW.HPort, view_current ) / 2, objChoiceBox); //Create the choiceBox and set it in the array
    //With allows us quick access to choiceBox
    with(choiceBox[i - 1]) {
        maxLength = sprite_width - 48; //Set the max length of the message
        maxHeight = sprite_height - 48; //Sett he max height of the message
        myMessage = messageGiver.myDialogue[index1, index2]; //Grab the message to be shown in the choiceBox
        //Parse string
        myNumber = string_copy(myMessage, string_length(myMessage) - 1, 2); //Get the number at the end of the message
        myNumber = real(myNumber); //Turn it into a real number
        myMessage = string_copy(myMessage, 1, string_length(myMessage) - 2); //Copy the message back to be displayed without the numbers
        image_speed = 0; //Make the choiceBox static
    }
}
showingChoices = true; //This is info for the system to know it's displaying choiceBoxes
objDialogueSystem.alarm[0] = 10; //Just a timer
