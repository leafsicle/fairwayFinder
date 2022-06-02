import axios from "axios";
import React, { useState, useEffect } from "react";
import CourseCard from "./CourseCard";

const CourseList = () => {
  const BASE_URL = "/api/courses/index";
  const SEARCH_URL = "/api/courses/search?zipcode=";
  const [courses, setCourses] = useState();
  const [zipCode, setZipCode] = useState("");

  useEffect(() => {
    axios.get(BASE_URL).then(coursesList => setCourses(coursesList.data));
  }, []);

  let buttonClicked = () => {
    console.log(zipCode);
  };

  return (
    <div className="container ">
      <p className="search">Search</p>
      <input
        type="text"
        name="postal_code"
        onChange={e => setZipCode(e.target.value)}
        placeholder="filter by zip code"
        maxLength={5}
        id=""
      />
      <button className="btn" onClick={buttonClicked}>
        search
      </button>
      <button className="btn" onClick={buttonClicked}>
        clear search
      </button>
      <h5>Courses near {zipCode}</h5>
      {courses?.map(course => {
        if (course.hole_count === 18) {
          return <CourseCard key={course.id} course={course}></CourseCard>;
        }
      })}
    </div>
  );
};

export default CourseList;
