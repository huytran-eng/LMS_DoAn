﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LMS.DataAccess.Models
{
    public class Student
    {
        [Key, ForeignKey("User")]
        public Guid Id { get; set; }
        public string StudentIdString { get; set; }   
        public virtual User User { get; set; }

        public virtual ICollection<StudentClass> StudentClasses { get; set; }
    }
}