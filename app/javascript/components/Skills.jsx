import React from 'react'

class Skills extends React.Component {
  render(){
    return(
      <div className='skill-box'>
        <div className='col-lg-11 skill'>
          <h3>Web Development</h3>
          <div className='skill-bar web-development'></div>
        </div>
        <div className='col-lg-7 skill'>
          <h3>Reinforcement Learning / A.I.</h3>
          <div className='skill-bar a-i'></div>
        </div>
        <div className='col-lg-10 skill'>
          <h3>Deep Learning</h3>
          <div className='skill-bar deep-learning'></div>
        </div>
        <div className='col-lg-5 skill'>
          <h3>Data Science</h3>
          <div className='skill-bar data-science'></div>
        </div>
      </div>
    )
  };
}

export default Skills
