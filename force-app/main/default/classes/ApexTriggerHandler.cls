public with sharing class ApexTriggerHandler {
    public static void updateRating(List<Account> accList) {
        for(Account ac: accList){
            if(ac.Industry == 'Energy' || ac.Industry == 'Media'){
                ac.Rating = 'Hot';
            }
           
        }

    }
}