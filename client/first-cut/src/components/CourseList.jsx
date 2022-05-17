import axios from 'axios';
import React, { useState, useEffect } from 'react'
import CourseCard from './CourseCard';

const CourseList = () => {
  const BASE_URL = "/api/courses/"
  let path = ''
  const [courses, setCourses] = useState();


  useEffect(() => {
    axios.get(BASE_URL+path)
    .then(coursesList => setCourses(coursesList.data))
  }, []);

  return (
    <div className='container'>
      <h5>Courses near you!</h5>
      {/* TODO: Add a filter button here for proximity! */}
        {courses?.map(course => {
          if (course.hole_count===18){
            return <CourseCard key={course.id} course={course}></CourseCard>
          }
        })}
    </div>
  )
}

export default CourseList