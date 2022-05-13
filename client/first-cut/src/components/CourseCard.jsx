import React from 'react'
import cardImage from "../assets/card-image.jpg";

const CourseCard = (props) => {
  return (
    <div className="card" >
      <h5 className="card-title">Course name</h5>
      <img src={cardImage} className="card-img-top px-2" 
        title="This course is stunning, eh?"
        alt="Well, this was a picture of a golf thing"/>
      <div className="card-body">
      <p className="card-text">Course Info here!</p>
      <span>
        <a href="#" className="btn btn-primary">Play Course</a>
        <a href="#" className="btn btn-success">See Scorecard</a>
      </span>
    </div>
  </div>
  )
}

export default CourseCard