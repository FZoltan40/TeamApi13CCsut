using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace TeamApi.Models;

public partial class TeamContext : DbContext
{
    public TeamContext()
    {
    }

    public TeamContext(DbContextOptions<TeamContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Player> Players { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseMySQL("server=localhost;database=team;user=root;password=password;sslmode=none;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Player>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PRIMARY");

            entity.ToTable("Player", "Team");

            entity.Property(e => e.CreatedTime).HasColumnType("datetime");
            entity.Property(e => e.Name).HasMaxLength(37);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
