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

    [Route("api/hospital/appointments")]
    public class AppointmentController : Controller
    {
        private readonly RepositoryContext _context;

        public AppointmentController(RepositoryContext context)
        {
            _context = context;
        }

        [HttpGet]
        public List<Appointment> Get(int patientid = 0, int practiceid=0, String appointmentdate=null)
        {

            return _context.Appointments.Where(x => (x.patientid == patientid || patientid == 0)
                    && (x.practiceid == practiceid || practiceid == 0) && (x.appointmentdate == appointmentdate || appointmentdate == null)).ToList<Appointment>();
        }

    }
}
