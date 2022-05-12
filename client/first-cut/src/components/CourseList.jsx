import React, { useState, useEffect } from 'react'


const CourseList = () => {
  const [courses, setCourses] = useState();

  useEffect(() => {
    fetch(`http://127.0.0.1:3001/api/courses/index`)
    .then(response=>response.json())
    .then(course => setCourses(course))
  }, []);



  return (
    <>
    <h5>Course list!</h5>
      <ul>
      {courses?.map(course => {
        return <li key={course.id}>{course.course_name}</li> 
      })}
      </ul>
    </>
  )
}

export default CourseList