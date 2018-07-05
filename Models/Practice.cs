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
    [System.ComponentModel.DataAnnotations.Schema.Table("practice")]
    public class Practice
    {
        public int practiceid { get; set; }
        public string practicename { get; set; }
        public string speciality { get; set; }
        public string licensenumber { get; set; }
        public string address { get; set; }
        public string city { get; set; }
        public string state { get; set; }
        public long cell { get; set; }
        public long zip { get; set; }

    }
}
