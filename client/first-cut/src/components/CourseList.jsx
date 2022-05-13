import axios from 'axios';
import React, { useState, useEffect } from 'react'


const CourseList = () => {
  const [courses, setCourses] = useState();

  useEffect(() => {
    axios.get(`/api/courses/index`)
    .then(courses => setCourses(courses.data))
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