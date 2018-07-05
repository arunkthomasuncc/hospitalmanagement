 using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
/**
* @author ARUN K THOMAS
*
* @date - 05/24/2018 
*/
namespace HospitalManagement.Models
{
    [System.ComponentModel.DataAnnotations.Schema.Table("appointment")]
    public class Appointment
    {
        public int appointmentid { get; set; }
        public int practiceid { get; set; }
        public int patientid { get; set; }
        public string appointmentdate { get; set; }
        public string time { get; set; }
        public string description { get; set; }
    }
}
