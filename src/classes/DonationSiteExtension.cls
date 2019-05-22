public with sharing class DonationSiteExtension {

    private ApexPages.StandardController ctrl;

    private Donation_Site__c site;

    private List<PieWedgeData> data;

    public DonationSiteExtension(ApexPages.StandardController ctrl) {
        ctrl.addFields(new List<String>{'Walk_in_Volunteers__c', 'Scheduled_Volunteers__c', 'No_Show_Volunteers__c'});
        this.ctrl = ctrl;
        this.site = (Donation_Site__c)ctrl.getRecord();
    }

    public void resetMe() {
        String id = site.id;
        this.site = [SELECT Id, Name, Walk_in_Volunteers__c, Scheduled_Volunteers__c, No_Show_Volunteers__c FROM Donation_Site__c WHERE id = :id];
        this.data = null;
    }

    public void randomize() {
        site.Walk_in_Volunteers__c = Math.round(Math.random()*20);
        site.Scheduled_Volunteers__c = Math.round(Math.random()*20);
        site.No_Show_Volunteers__c = Math.round(Math.random()*20);
    }

    public void quicksave() {
        update site;
    }

    public List<PieWedgeData> getPieData() {
        if (data != null) {
            return data;
        }

        data = new List<PieWedgeData>();
        data.add(new PieWedgeData('Walk In', site.Walk_in_Volunteers__c));
        data.add(new PieWedgeData('Scheduled', site.Scheduled_Volunteers__c));
        data.add(new PieWedgeData('No Show', site.No_Show_Volunteers__c));
        return data;
    }

    // Wrapper class
    public class PieWedgeData {

        public String name { get; set; }
        public Decimal data { get; set; }

        public PieWedgeData(String name, Decimal data) {
            this.name = name;
            if (data == null) {
                data = 0;
            }
            this.data = data;
        }
    }
}