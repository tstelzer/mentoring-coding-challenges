import './App.css'
import { UserDirectory } from './components/UserDirectory'

function App() {
  return (
    <div className="app">
      <header className="app-header">
        <h1>Frontend Coding Challenge</h1>
      </header>
      <main>
        <UserDirectory />
      </main>
    </div>
  )
}

export default App
