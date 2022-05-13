import './App.css';
import CourseList from './components/CourseList.jsx';
import Navbar from './components/Navbar.jsx';

function App() {
  return (
    <div className="App">
      <header className="App-header ">
        <Navbar></Navbar>
      </header>
      <main className='container pt-3'>
        <CourseList/>
      </main>
    </div>
  );
}

export default App;
