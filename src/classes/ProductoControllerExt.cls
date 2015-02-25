public class ProductoControllerExt
{
    private final Producto__c producto;
    private final ApexPages.StandardController stdController;
    
   public ProductoControllerExt(ApexPages.StandardController stdController) 
   {
       this.stdController = stdController;
       this.producto = (Producto__c)stdController.getRecord(); 
   }
   
   // Method overrides
   // ...
   
   // Custom methods 
   // ...
}