public class OpportunityTriggerHandler {
    
    public static void updateDescription(List<Opportunity> oppList){
        
        for(Opportunity op: oppList)
        {
            if(op.Amount > 100000){
                op.Description = 'Best Opportunity';
            }
        }
    }

}