namespace ProyectoPDF_MVC.Models.ViewModels
{
    public class ViewModelVenta
    {
        public string? numeroVenta { get; set; }
        public string? documentCliente { get; set; }
        public string? nombreCliente { get; set; }
        public string? subtotal { get; set; }
        public string? impuesto { get; set; }
        public string? total { get; set; }
        public List<ViewModelDetalleVenta>? detalleVenta { get; set; }
    }
}
