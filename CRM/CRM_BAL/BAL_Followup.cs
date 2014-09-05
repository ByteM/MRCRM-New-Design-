﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CRM_BAL
{
    public class BAL_Followup
    {
        public int Flag { get; set; }
        //public string Cust_ID { get; set; }
        public string Followup_ID { get; set; }

        public string FiratName { get; set; }

        public string LastName { get; set; }

        public string Date_Of_Birth { get; set; }

        public string Occupation { get; set; }

        public string Mobile_No { get; set; }

        public string PhoneNo { get; set; }

        public string Email_ID { get; set; }

        public string Address { get; set; }

        public string City { get; set; }

        public string ZipNo { get; set; }

        public string State { get; set; }

        public string Country { get; set; }
        
        public string Product_Details { get; set; }

        public int EmployeeID { get; set; }

        public string Followup_Type { get; set; }
 
        public string F_Date { get; set; }
                
        public string SourceOfEnquiry { get; set; }

        public int SourceOfEnquiryID { get; set; }

        public string S_Status { get; set; }
        
        public string C_Date { get; set; }
    }
}
