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
      <section>
      {courses?.map(course => {
        return <p key={course.id}>{course.course_name}</p>
      })}
      </section>
    </>
  )
}

export default CourseList