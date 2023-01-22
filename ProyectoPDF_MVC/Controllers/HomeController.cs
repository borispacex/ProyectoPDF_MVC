using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ProyectoPDF_MVC.Models;
using ProyectoPDF_MVC.Models.ViewModels;
using Rotativa.AspNetCore;
using System.Diagnostics;

namespace ProyectoPDF_MVC.Controllers
{
    public class HomeController : Controller
    {
        private readonly DBPRUEBAS2Context _dbcontext;

        public HomeController(DBPRUEBAS2Context dbcontext)
        {
            _dbcontext = dbcontext;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult ImprimirVenta(int idVenta)
        {

            ViewModelVenta modelo = _dbcontext.Venta.Include(dv => dv.DetalleVenta).Where(v => v.IdVenta == idVenta)
                .Select(v => new ViewModelVenta()
                {
                    numeroVenta = v.NumeroVenta,
                    documentCliente = v.DocumentoCliente,
                    nombreCliente = v.NombreCliente,
                    subtotal = v.SubTotal.ToString(),
                    impuesto = v.ImpuestoTotal.ToString(),
                    total = v.Total.ToString(),
                    detalleVenta = v.DetalleVenta.Select(dv => new ViewModelDetalleVenta()
                    {
                        producto = dv.NombreProducto,
                        cantidad = dv.Cantidad.ToString(),
                        precio = dv.Precio.ToString(),
                        total = dv.Total.ToString()
                    }).ToList()
                }).FirstOrDefault();

            //return View();
            return new ViewAsPdf("ImprimirVenta", modelo)
            {
                FileName = $"Venta {modelo?.numeroVenta}.pdf",
                PageOrientation = Rotativa.AspNetCore.Options.Orientation.Portrait,
                PageSize = Rotativa.AspNetCore.Options.Size.A4
            };
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}