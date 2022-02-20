using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio
{
    public class Twit
    {
        public long ID { get; set; }
        public string Contenido { get; set; }
        public string NombreApellido { get; set; }
        public string Usuario { get; set; }
        public bool Estado { get; set; }
    }
}
