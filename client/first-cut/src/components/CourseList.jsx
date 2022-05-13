import axios from 'axios';
import React, { useState, useEffect } from 'react'
import CourseCard from './CourseCard';

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
        return <CourseCard key={course.id} props={course}></CourseCard>
      })}
      </section>
    </>
  )
}

export default CourseList