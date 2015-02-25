@isTest (SeeAllData=false)
public class ProductoControllerTest 
{
    public static testMethod void testGetProductos() 
    {
        // Crear Datos
        Producto__c producto = new Producto__c();
        producto.Name = 'TestM';
        producto.Cantidad__c = 1;
        producto.Precio__c = 5;
        insert producto;
        
        // Llamar a metodo getProductos en el controlador
        PageReference pageRef = Page.productocustom;
        Test.setCurrentPage(pageRef);
        ProductoController controller = new ProductoController();
        List<ProductoController.VistaProducto> VistaProductoLista = controller.getProductos();
        
        // Comprobar resultados
        System.assertEquals(1, VistaProductoLista.size()); 
    }
}