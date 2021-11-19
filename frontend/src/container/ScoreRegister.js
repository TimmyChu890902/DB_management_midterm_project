import React from 'react'
import "./ScoreRegister.css"
import ScoreMenu from './ScoreMenu'
import ScoreBoard from './ScoreBoard'
const ScoreRegister = ({setGcheckResult, setTarget, setScheckResult, GcheckResult,  ScheckResult, setGroup, Group, Target}) => {
    return (
        <div>
            <div className = "Sback">
                <p className = "STitle">分數登錄</p>  
                <ScoreMenu setScheckResult = {setScheckResult} setTarget = {setTarget} Target = {Target} />
            </div>       
            <ScoreBoard setGcheckResult = {setGcheckResult} GcheckResult = {GcheckResult} setGroup = {setGroup} Group = {Group} />
        </div>
        
    )
}

export default ScoreRegister
