public with sharing class DonationsController {

    public List<Donation_Site__c> getActiveSites() {
        List<Donation_Site__c> sites = [SELECT Id, Name, Priority__c, Address__c
            FROM Donation_Site__c];
        return sites;
    }


    public List<Donation_Site__c> getHighPriority() {
        List<Donation_Site__c> sites = [SELECT Id, Name, Priority__c, Address__c
            FROM Donation_Site__c
            WHERE Priority__c = 'High'];
        return sites;
    }

    public List<Donation_Site__c> getLowPriority() {
        List<Donation_Site__c> sites = [SELECT Id, Name, Priority__c, Address__c
            FROM Donation_Site__c
            WHERE Priority__c = 'Low'];
        return sites;
    }

    public List<Donation_Site__c> getMediumPriority() {
        List<Donation_Site__c> sites = [SELECT Id, Name, Priority__c, Address__c
            FROM Donation_Site__c
            WHERE Priority__c = 'Medium'];
        return sites;
    }
}