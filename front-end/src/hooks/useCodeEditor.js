import { useState } from "react";
import axios from "axios";

async function delay(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

async function executeCode(
  code,
  subjectProgrammingLanguageId,
  classExerciseId
) {
  const token = localStorage.getItem("token"); // Retrieve the token from localStorage

  try {
    if (!code || !subjectProgrammingLanguageId || !classExerciseId) {
      console.error("Missing required parameters.");
      return;
    }

    console.log("Code:", code);
    console.log("SubjectProgrammingLanguageId:", subjectProgrammingLanguageId);
    console.log("ClassExerciseId:", classExerciseId);

    // Make the POST request
    const response = await axios.post(
      "https://localhost:7104/api/submission/submit-code",
      {
        code: code,
        subjectProgrammingLanguageId: subjectProgrammingLanguageId,
        classExerciseId: classExerciseId,
      },
      {
        headers: {
          Authorization: `Bearer ${token}`, // Attach the token in the Authorization header
        },
      }
    );

    console.log(response);
    // Check the response status
    if (response.status === 200) {
      console.log("Execution result:", response.data);
    } else {
      console.error("Execution failed with status:", response.status);
    }
  } catch (error) {
    console.error("Error executing code:", error);
  }
}

export const useCodeEditor = () => {
  const [state, setState] = useState({
    code: "\n \n \n \n \n \n \n \n \n",
    language: "java",
    isRunning: false,
    languageId: "",
    output: {},
  });

  const setCode = (newCode) => {
    setState((prev) => ({ ...prev, code: newCode }));
  };

  const setLanguage = (language) => {
    setState((prev) => ({ ...prev, language }));
  };

  const setLanguageId = (languageId) => {
    setState((prev) => ({ ...prev, languageId }));
  };

  const runCode = async (classExerciseId) => {
    setState((prev) => ({ ...prev, isRunning: true }));
    try {
      const result = await executeCode(
        state.code,
        state.languageId,
        classExerciseId
      );
      setState((prev) => ({ ...prev, output: result }));
    } catch (error) {
      setState((prev) => ({
        ...prev,
        output: error instanceof Error ? error.message : "Execution failed",
      }));
    } finally {
      setState((prev) => ({ ...prev, isRunning: false }));
    }
  };

  return {
    ...state,
    setCode,
    setLanguage,
    runCode,
    setLanguageId,
  };
};