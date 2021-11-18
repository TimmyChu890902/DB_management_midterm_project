import React from 'react'
import "./ScoreRegister.css"
import ScoreMenu from './ScoreMenu'
import ScoreBoard from './ScoreBoard'
const ScoreRegister = ({setScheckResult, ScheckResult, setGroup, Group}) => {
    return (
        <div>
            <div className = "Sback">
                <p className = "STitle">分數登錄</p>  
                <ScoreMenu setScheckResult = {setScheckResult} />
            </div>       
            <ScoreBoard setGroup = {setGroup} Group = {Group} />
        </div>
        
    )
}

export default ScoreRegister
