import React from 'react'
import LiveRanking from '../component/LiveRanking'
import LiveSearchGroup from '../component/LiveSearchGroup'
import "./ScoreRegister.css"


const ScoreBoard = ({setGcheckResult, setGroup, Group, GcheckResult}) => {
    return (
        <div className = "liveBoard">
            <p style = {{marginTop: "5%", marginBottom:"1%", textAlign:"Center"}}>110椰林盃</p>

            <LiveSearchGroup setGcheckResult = {setGcheckResult} setGroup = {setGroup} GcheckResult = {GcheckResult}/>

            {GcheckResult?<LiveRanking Group = {Group}/>:<></>}
        </div>
    )
}

export default ScoreBoard
