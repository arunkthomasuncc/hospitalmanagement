using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using HospitalManagement.Models;
/**
* @author ARUN K THOMAS
*
* @date - 05/24/2018 
*/
// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace HospitalManagement.Controllers
{
    [Route("api/hospital/patients")]
    public class PatientController : Controller
    {
        private readonly RepositoryContext _context;

        public PatientController(RepositoryContext context)
        {
            _context = context;
        }

        [HttpGet]
        public List<Patient> Get(int patientid = 0, string firstname = null, string lastname = null, String birthdate = null)
        {

            return _context.Patients.Where(x => (x.patientid == patientid || patientid == 0)
                    && (x.firstname == firstname || firstname == null) && (x.lastname == lastname || lastname == null) && (x.birthdate == birthdate || birthdate == null)).ToList<Patient>();
        }

    }
}
