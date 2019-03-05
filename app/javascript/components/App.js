import React from 'react'
import {Route, Switch} from 'react-router-dom'
import Skills from './Skills'
import Game from './Game'
import Tools from './Tools'

class App extends React.Component {
    constructor(props){
      super(props);
      this.state ={
        view: 'Game',
      }
    }

    renderPageContent({state}){
      console.log(this.state);
      return(
        <div>
          {(() =>{
            switch(this.state.view){
              case 'Game':
                return(<Game/>);
              case 'Skills':
                return <Skills/>;
              case 'Tools':
                return <Tools/>;
            }
          })()}
        </div>
      )
    }
    render () {
          return(
              <div className='playground'>
                <div className='playground-particles'>
                  <div id='particles-js' >
                  </div>
                </div>
                <div className='row buttons'>
                    <button className='col-md-2' onClick={()=> this.setState({view:'Game'})}>Game</button>
                    <button className='col-md-2' onClick={()=> this.setState({view:'Skills'})}>Skills</button>
                    <button className='col-md-2' onClick={()=> this.setState({view:'Tools'})}>Tools</button>
                </div>
                <div className='playground-contnet container'>

                  {this.renderPageContent(this.state)}
                </div>
              </div>
          );
    }
}
export default App
