import './App.css';
import CourseList from './components/CourseList.jsx';
import Navbar from './components/Navbar.jsx';
import FinalScorecard from './components/FinalScorecard.jsx';

function App() {
  return (
    <div className="App">
      <header className="App-header ">
        <Navbar></Navbar>
      </header>
      <main className='container pt-3'>
        <CourseList/>
        {/* <FinalScorecard/> */}
        {/* <form>
          <h3>Hole 8</h3>
          <span className='fst-italic'>Par value</span >
          <p className='bg-primary'>Green Tee Yardage- 343yds</p>
          <img height={200} src="https://thecanterburyhub.co.uk/wp-content/uploads/2018/02/200-x-200.jpg" class="img-thumbnail" alt="..."/>
          <p>Fairway bunker</p>
          <p>Greenside bunker</p>
          <p>H20 </p>
          <p>OB</p>
          <p>penalty stroke count</p>

          <p>putts</p>
          <div class="mb-3">
            <label for="exampleInputEmail1penalty-stroke-count"class="form-label">Strokes</label> 
            <button className="stroke-count btn btn-dark">-</button>
            <input type="number" pattern="[0-9].{1,2}" n
            ame="strokes" 
            class="form-control" 
            id="exampleInputEmail1penalty-stroke-count" aria-describedby="Help"/>
          <button className="stroke-count btn btn-dark">+</button>
            <div id="strokes help" class="form-text">How many times did you swing the club at the ball?</div>
          </div>
          <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Password</label>
            <input type="password" class="form-control" id="exampleInputPassword1"/>
          </div>
          <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1"/>
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
          </div>
          <button type="submit" class="btn btn-primary">Submit</button>
        </form> */}
      </main>
    </div>
  );
}

export default App;
