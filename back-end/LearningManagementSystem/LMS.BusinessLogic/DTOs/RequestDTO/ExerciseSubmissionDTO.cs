﻿namespace LMS.BusinessLogic.DTOs.RequestDTO
{
    public class ExerciseSubmissionDTO
    {
        public Guid ClassExerciseId { get; set; }
        public string StudentCode { get; set; }
        public string ProgrammingLanguage { get; set; }
    }
}