﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LMS.BusinessLogic.DTOs
{
    public class SubjectDTO
    {
        public Guid Id { get; set; }           
        public string Name { get; set; }         
        public int Credit { get; set; }           
        public string Description { get; set; }   
        public Guid DepartmentId { get; set; }   
        public DepartmentDTO DepartmentDTO { get; set; } 
    }

}