﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class EnglishGameEntities : DbContext
    {
        public EnglishGameEntities()
            : base("name=EnglishGameEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Choice> Choices { get; set; }
        public virtual DbSet<Concentration> Concentrations { get; set; }
        public virtual DbSet<LookAndFind> LookAndFinds { get; set; }
        public virtual DbSet<Matching> Matchings { get; set; }
        public virtual DbSet<Painting> Paintings { get; set; }
        public virtual DbSet<Sorting> Sortings { get; set; }
        public virtual DbSet<Storytime> Storytimes { get; set; }
        public virtual DbSet<Unit> Units { get; set; }
    }
}
