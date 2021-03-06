//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ENTIDADES
{
    using System;
    using System.Collections.Generic;
    
    public partial class Clientes
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Clientes()
        {
            this.ClientesDirecciones = new HashSet<ClientesDirecciones>();
            this.ClientesFuentesContacto = new HashSet<ClientesFuentesContacto>();
            this.ClientesTelefonos = new HashSet<ClientesTelefonos>();
            this.Llamados = new HashSet<Llamados>();
            this.Mails = new HashSet<Mails>();
        }
    
        public short Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public Nullable<byte> RubroId { get; set; }
        public Nullable<System.DateTime> FechaNacimiento { get; set; }
    
        public virtual Rubros Rubros { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientesDirecciones> ClientesDirecciones { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientesFuentesContacto> ClientesFuentesContacto { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ClientesTelefonos> ClientesTelefonos { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Llamados> Llamados { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Mails> Mails { get; set; }
    }
}
