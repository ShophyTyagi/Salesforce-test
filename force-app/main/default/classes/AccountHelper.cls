public with sharing class AccountHelper {
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountByIndustry(string industry){
        return [
            SELECT Id, Name, Industry
            FROM Account
            WHERE Industry = :industry
        ];
    }
}