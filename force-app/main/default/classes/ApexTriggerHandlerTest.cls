@isTest
public class ApexTriggerHandlerTest {
    @isTest
    public static void updateRatingTest() {
        List<Account> accList = new List<Account>();

        for(Integer i = 0; i < = 5; i++)
        {
            Account ac = new Account();
            ac.Name= 'Test' + i;
            ac.Industry = 'Energy';
            accList.add(ac);
        }
        Test.startTest();
        insert accList;
        Test.stopTest();

        List<Account> updatedList = [SELECT Id, Rating FROM Account WHERE Id =:accList[0].id];
        System.assertEquals('Hot', updatedList[0].Rating, 'Account rating should be hot');


    }

}