import React from 'react'
import "./ScoreRegister.css"
import ScoreMenu from './ScoreMenu'
import ScoreBoard from './ScoreBoard'
const ScoreRegister = ({setLiveResult, setTarget, setScheckResult, LiveResult,  ScheckResult, setGroup, Group, Target}) => {
    return (
        <div>
            <div className = "Sback">
                <p className = "STitle">分數登錄</p>  
                <ScoreMenu setScheckResult = {setScheckResult} ScheckResult = {ScheckResult} setTarget = {setTarget} Target = {Target} />
            </div>       
            <ScoreBoard setLiveResult = {setLiveResult} LiveResult = {LiveResult} setGroup = {setGroup} Group = {Group} />
        </div>
        
    )
}

export default ScoreRegister
