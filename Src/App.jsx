import React from 'react';
import Home from './Pages/Home';  // ✅ Use the correct case-sensitive path

function App() {
  return (
    <div>
      <Home />
    </div>
  );
}

export default App;

// ✅ Ensure that the Home component is imported correctly
// ✅ The Home component should be in the Pages directory, not in the root src directory