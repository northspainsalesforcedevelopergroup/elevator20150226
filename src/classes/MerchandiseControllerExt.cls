public class MerchandiseControllerExt
{
    private final Merchandise__c merchandise;
    private final ApexPages.StandardController stdController;
    
   public MerchandiseControllerExt(ApexPages.StandardController stdController) 
   {
       this.stdController = stdController;
       this.merchandise = (Merchandise__c)stdController.getRecord(); 
   }
   
   // Method overrides
   // ...
   
   // Custom methods 
   // ...
}