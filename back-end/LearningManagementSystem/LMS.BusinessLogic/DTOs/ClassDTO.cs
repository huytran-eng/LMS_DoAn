﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LMS.BusinessLogic.DTOs
{
    public class ClassDTO
    {
        public Guid Id { get; set; }           
        public DateTime StartDate { get; set; }   
        public DateTime EndDate { get; set; }    

        public TeacherDTO Teacher { get; set; }

        public SubjectDTO Subject { get; set; }

        public List<StudentDTO> Students { get; set; }
    }

}