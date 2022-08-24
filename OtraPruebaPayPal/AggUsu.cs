using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OtraPruebaPayPal
{
    public class AggUsu
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public string Correo { get; set; }
        public string Cargo { get; set; }
        public AggUsu() { }

        public AggUsu(string pNombre, string pUsername, string pPassword, string pCorreo, string pCargo, int PId)

        {
            this.Id = PId;
            this.Nombre = pNombre;
            this.Username = pUsername;
            this.Password = pPassword;
            this.Correo = pCorreo;
            this.Cargo = pCargo;
        }
    }
}