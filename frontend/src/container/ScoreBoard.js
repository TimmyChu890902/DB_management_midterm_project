import React from 'react'
import LiveRanking from '../component/LiveRanking'
import LiveSearchGroup from '../component/LiveSearchGroup'
import "./ScoreRegister.css"


const ScoreBoard = ({setLiveResult, setGroup, Group, LiveResult}) => {
    return (
        <div className = "liveBoard">
            <p style = {{marginTop: "5%", marginBottom:"1%", textAlign:"Center"}}>110椰林盃</p>

            <LiveSearchGroup setLiveResult = {setLiveResult} setGroup = {setGroup} LiveResult = {LiveResult}/>

            {LiveResult?<LiveRanking Group = {Group}/>:<></>}
        </div>
    )
}

export default ScoreBoard
