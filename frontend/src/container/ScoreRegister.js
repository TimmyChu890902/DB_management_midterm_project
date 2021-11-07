import React from 'react'
import "./ScoreRegister.css"
import ScoreMenu from './ScoreMenu'
const ScoreRegister = () => {
    return (
        <div>
            <div className = "Sback">
                <p className = "STitle">分數登錄</p>  
                <ScoreMenu/>
            </div>       
            
        </div>
        
    )
}

export default ScoreRegister
