import React from 'react'
import "./GroupSearch.css"
import GroupMenu from './GroupMenu'
import GroupResult from './GroupResult'
const GroupSearch = ({setGcheckResult, setCup, setGroup, GcheckResult, Cup, Group}) => {
    return (
        <div>
           <div className = "Gback">
                <p className = "GTitle">盃賽成績</p>
                <div>
                    <GroupMenu setGcheckResult = {setGcheckResult} setCup = {setCup} setGroup = {setGroup} />
                </div>
                
            </div>
            {GcheckResult?<GroupResult Cup = {Cup} Group = {Group} />:<></>}
        </div>
    )
}

export default GroupSearch
