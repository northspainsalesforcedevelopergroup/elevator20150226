@isTest (SeeAllData=false)
public class merchandiseControllerTest 
{
    public static testMethod void testGetProducts() 
    {
        // Create Data
        Merchandise__c merchandise = new Merchandise__c();
        merchandise.Name = 'TestM';
        merchandise.Quantity__c = 1;
        merchandise.Price__c = 5;
        insert merchandise;
        
        // Call getProduct method in Controller class
        PageReference pageRef = Page.merchandisecustom;
        Test.setCurrentPage(pageRef);
        MerchandiseController controller = new MerchandiseController();
        List<MerchandiseController.DisplayMerchandise> DisplayMerchandiseList = controller.getProducts();
        
        // Check Result
        System.assertEquals(1, DisplayMerchandiseList.size()); 
    }
}