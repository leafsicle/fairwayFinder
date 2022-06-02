import React from 'react'
import cardImage from "../assets/card-image.jpg";

const CourseCard = (course) => {
  const BASE_URL = "/api/courses/"
  return (
    <div className="card mt-4 p-2" title={`Course card for ${course.course.course_name}`}>
      <h5 className="card-title">{course.course.course_name}</h5>
      <img src={cardImage} className="card-img-top px-2 mw-50" 
        title="This course is stunning, eh?"
        alt="Well, this was a picture of a golf thing"/>
      <div className="card-body">
      <p className="card-text">{course.course.hole_count} hole</p>
        <span className='pt-5'>
          <a href={BASE_URL+course.course.id} className="btn btn-primary">Play Course</a>
            <a href={course.course.scorecard_url} target="_blank" title='Opens the official course scorecard; if applicable' className="btn btn-light">See Scorecard</a>
        </span>

    </div>
  </div>
  )
}

export default CourseCard