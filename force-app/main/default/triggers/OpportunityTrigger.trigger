trigger OpportunityTrigger on Opportunity (before insert) {

    OpportunityTriggerHandler.updateDescription(Trigger.New);
}