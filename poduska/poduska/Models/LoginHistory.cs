//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace poduska.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class LoginHistory
    {
        public int id { get; set; }
        public Nullable<int> id_user { get; set; }
        public Nullable<System.DateTime> LoginData { get; set; }
        public string typevhod { get; set; }
    
        public virtual users users { get; set; }
    }
}
