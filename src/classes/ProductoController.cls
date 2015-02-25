public class ProductoController 
{
    List<VistaProducto> productos;
       
    public List<VistaProducto> getProductos()
    {
        if(productos == null) {
            productos = new List<VistaProducto>();
            for(Producto__c item : [SELECT Id, Name, Precio__c, Cantidad__c FROM Producto__c])
                productos.add(new VistaProducto(item));
        }
        return productos;
    } 
    
    public class VistaProducto
    {
        private Producto__c producto;
        public VistaProducto(Producto__c item) {
            this.producto = item;
        }
        
        public String nombre { get { return producto.Name; } }
        public Decimal cantidad { get { return producto.Cantidad__c; } }
        public Decimal precio { get { return producto.Precio__c; } }
    }
}