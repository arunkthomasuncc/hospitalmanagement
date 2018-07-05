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
    [Route("api/hospital/practices")]
    public class PracticeController : Controller
    {
        private readonly RepositoryContext _context;

        public PracticeController(RepositoryContext context)
        {
            _context = context;
        }
        [HttpGet]
        public List<Practice> Get(int practiceid = 0, string practicename = null, string speciality=null,string licensenumber=null)
        {

            return _context.Practices.Where(x => (x.practiceid == practiceid || practiceid == 0)
                    && (x.practicename == practicename || practicename == null) && (x.speciality == speciality || speciality == null) && 
                    (x.licensenumber == licensenumber || licensenumber == null)).ToList<Practice>();
        }
        

    }
}
