import React from 'react'
import LiveRanking from '../component/LiveRanking'
import Groups from '../component/Groups'
import "./ScoreRegister.css"
const ScoreBoard = ({setGroup, Group}) => {
    return (
        <div className = "liveBoard">
            <p style = {{marginTop: "5%", marginBottom:"1%", textAlign:"Center"}}>110椰林盃</p>
            <Groups setGroup = {setGroup} Group = {Group} />
            <LiveRanking Group = {Group}/>
        </div>
    )
}

export default ScoreBoard
