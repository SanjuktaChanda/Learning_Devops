trigger AccountTrigger on Account (before insert) {

    ApexTriggerHandler.updateRating(Trigger.new);

}