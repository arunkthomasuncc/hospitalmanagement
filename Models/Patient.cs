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
    [System.ComponentModel.DataAnnotations.Schema.Table("patient")]
    public class Patient
    {
    
            public int patientid { get; set; }
        
            public string firstname { get; set; }
            public string lastname { get; set; }
            public string birthdate { get; set; }
            public string address { get; set; }
            public string city { get; set; }
            public string state { get; set; }
            public string medicalnotes { get; set; }
            public string nextvisitdate { get; set; }
            public long cell { get; set; }
            public long zip { get; set; }
            //public DateTime DateOfBirth { get; set; }
        
    }
}
