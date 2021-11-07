import React from 'react'
import "./HomePage.css"
// import { Button } from 'antd';
const HomePage = ({ToPersonalSerach, ToGroupSearch, ToScoreRigister}) => {

    
    

    return (
        <div>
            <div className = "Homeback">
                <p className = "homeTitle">射箭計分系統</p>  
                <div className = "buttonDiv">
                    <button id = "color1" onClick = {ToGroupSearch} >盃賽成績查詢</button>
                    <button id = "color2" onClick = {ToPersonalSerach} >個人成績查詢</button>
                    <button id = "color3" onClick = {ToScoreRigister}>分數登錄</button>
                </div>
            </div>
            
        </div>
    )
}

export default HomePage
