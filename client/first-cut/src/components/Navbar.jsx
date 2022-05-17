import React from 'react'

const Navbar = () => {
  return (
      <nav className="navbar navbar-expand-lg bg-primary text-light">
          <div className="container-fluid justify-content-end">
            <a className="navbar-brand brand-name text-light" href="#">FairwayFinder</a>
            <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span className="navbar-toggler-icon"></span>
            </button>
            <div className="collapse navbar-collapse " id="navbarSupportedContent">
              <ul className="navbar-nav me-auto mb-2 mb-lg-0 justify-content-end">
                <li className="nav-item ">
                  <a className="nav-link active" aria-current="page" href="#">Player Info</a>
                </li>
                <li className="nav-item">
                  <a className="nav-link" href="#">Previous Rounds</a>
                </li>
                <li className="nav-item">
                  <a className="nav-link" href="#">Start a round</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
  )
}

export default Navbar