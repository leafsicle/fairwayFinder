import React from 'react'

const Navbar = () => {
  return (
      <nav class="navbar navbar-expand-lg bg-light">
          <div class="container-fluid justify-content-end">
            <a class="navbar-brand brand-name" href="#">FairwayFinder</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0 justify-content-end">
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#">Player Info</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Previous Rounds</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">Start a round</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
  )
}

export default Navbar