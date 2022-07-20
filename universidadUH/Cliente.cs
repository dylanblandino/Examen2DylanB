using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace universidadUH
{
    public class Cliente
    {
        private static string nombre { get; set; }
        private static string cedula { get; set; }
        private static string telefono { get; set; }
        private static string direccion { get; set; }
        private static int ServicioID { get; set; }
        private static float monto { get; set; }
        private static float descuento { get; set; }
        private static float IVA { get; set; }
        private static float subtotal { get; set; }
        private static float total { get; set; }

        //Constructor de la clase
        public Cliente() { }
        public Cliente(string nom, string ced, string tel, string dir)
        {
            nombre = nom;
            cedula = ced;
            telefono = tel;
            direccion = dir;
        }
        public Cliente(string nom, string ced, string tel, string dir, float mon, float desc, float iva, float sub, float tot)
        {
            nombre = nom;
            cedula = ced;
            telefono = tel;
            direccion = dir;
            monto = mon;
            descuento = desc;
            IVA = iva;
            subtotal = sub;
            total = tot;
        }

        public static string GetNombre() { return nombre; }
        public static string GetCedula() { return cedula; }
        public static string GetTelefono() { return telefono; }
        public static string GetDireccion() { return direccion; }
        public static int GetServicioID() { return ServicioID; }
        public static float GetMonto() { return monto; }
        public static float GetDescuento() { return descuento; }
        public static float GetSubtotal() { return subtotal; }
        public static float GetTotal() { return total; }
        public static float GetIva() { return IVA; }

        public static void Setnombre(string nom)
        {
            nombre = nom;
        }
        public static void Setcedula(string ced)
        {
            cedula = ced;
        }
        public static void Settelefono(string tel)
        {
            telefono = tel;
        }
        public static void Setdireccion(string dir)
        {
            direccion = dir;
        }
        public static void SetServicioID(int _ServicioID)
        {
            ServicioID = _ServicioID;
        }
        public static void Setmonto(float mon)
        {
            monto = mon;
        }
        public static void Setdescuento(float desc)
        {
            descuento = desc;
        }
        public static void Setsubtotal(float sub)
        {
            subtotal = sub;
        }
        public static void Setiva(float iva)
        {
            IVA = iva;
        }
        public static void Settotal(float tot)
        {
            total = tot;
        }
    }

}
