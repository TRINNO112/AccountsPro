// src/App.js
import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Home from './Pages/Home';
import LearnBasics from './Pages/LearnBasics';
import JournalCalculator from './Pages/JournalCalculator';
import QuizPage from './Pages/QuizPage';

export default function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/learn" element={<LearnBasics />} />
        <Route path="/calculator" element={<JournalCalculator />} />
        <Route path="/quiz" element={<QuizPage />} />
      </Routes>
    </Router>
  );
}
