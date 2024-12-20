﻿using System.ComponentModel.DataAnnotations.Schema;

namespace LMS.DataAccess.Models
{
    public class TestCase : BaseEntity
    {
        public string Input { get; set; }
        public string ExpectedOutput { get; set; }
        public string? Description { get; set; }
        public bool IsHidden { get; set; }
        public Guid ExerciseId { get; set; }
        [ForeignKey("ExerciseId")]
        public virtual Exercise Exercise { get; set; }
    }
}
