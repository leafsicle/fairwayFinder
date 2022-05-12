import React, { useState, useEffect } from 'react'


const CourseList = () => {
  const [count, setCount] = useState(4);

  useEffect(() => {
    fetch(`http://127.0.0.1:3001/api/courses/index`)
    .then(response=>response.json())
    .then(json => console.log(json))
  }, []);

  let decrementCount = ()=> {
    if(count>0){
      setCount(prevCount =>prevCount -1)
    }
  }
  let incrementCount = ()=> {
    if(count<10){
      setCount(prevCount =>prevCount +1)
    }
  }

  return (
    <>
      <button onClick={decrementCount}>-</button>
      <span>{count}</span>
      <button onClick={incrementCount}>+</button>
    </>
  )
}

export default CourseList