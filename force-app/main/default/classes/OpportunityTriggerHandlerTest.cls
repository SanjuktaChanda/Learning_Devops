@isTest
public class OpportunityTriggerHandlerTest {
    @isTest
    public static void updateDescriptionTest(){
        
        List<Opportunity> opp = new List<Opportunity>();
        for(Integer i=1;i<=5; i++)
        {
            Opportunity op = new Opportunity();
            op.Name = 'Test' + i;
            op.StageName = 'New';
            op.CloseDate = System.today();
            op.Amount = 120000;
            opp.add(op);
        }
        
        Test.startTest();
        insert opp;
        Test.stopTest();
        
        List<Opportunity> updatedopp = [SELECT Id, Description FROM Opportunity WHERE Id= :opp[0].Id];
        System.assertEquals('Best Opportunity', updatedopp[0].Description, 'Opportunity should be best');
    }

}