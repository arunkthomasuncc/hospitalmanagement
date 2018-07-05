using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace HospitalManagement.Models
{
    public class RepositoryContext:DbContext
    {
        public RepositoryContext(DbContextOptions options)
            : base(options)
        {
        }

        public DbSet<Patient> Patients { get; set; }
        public DbSet<Practice> Practices { get; set; }
        public DbSet<Appointment> Appointments { get; set; }
    }
}
