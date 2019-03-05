import React from 'react'
import ReactDOM from 'react-dom'
import Board from './Board'

class Game extends React.Component {
    render() {
        console.log("Hooray, the game is working")
        return (
            <div className="game d-flex justify-content-center">
                <div className="game-board">
                    <Board />
                </div>
                <div className="game-info">
                    <div>{/* status */}</div>
                    <ol>{/* TODO */}</ol>
                </div>
            </div>
        );
    }
}


export default Game
