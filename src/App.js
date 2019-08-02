import React from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
					This site is brought to you by our industrious friendly <span role="img" aria-label="docker whale">&#x1F40B;</span> whale !
        </p>
	<p>
		<code>v0.2</code>
	</p>
      </header>
    </div>
  );
}

export default App;
