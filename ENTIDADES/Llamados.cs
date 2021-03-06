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
    
    public partial class Llamados
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Llamados()
        {
            this.LlamadosDestinatarios = new HashSet<LlamadosDestinatarios>();
            this.LlamadosMotivosLlamados = new HashSet<LlamadosMotivosLlamados>();
        }
    
        public int Id { get; set; }
        public Nullable<short> ClienteId { get; set; }
        public Nullable<System.DateTime> Fecha { get; set; }
        public string DescripcionLLamado { get; set; }
        public Nullable<byte> UsuarioAtiendeId { get; set; }
    
        public virtual Clientes Clientes { get; set; }
        public virtual Usuarios Usuarios { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LlamadosDestinatarios> LlamadosDestinatarios { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LlamadosMotivosLlamados> LlamadosMotivosLlamados { get; set; }
    }
}
