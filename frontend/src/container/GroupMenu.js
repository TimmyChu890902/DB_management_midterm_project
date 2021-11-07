import React from 'react'
import "./GroupSearch.css"
import {Space, Button} from 'antd'
import Group from '../component/Group'
import Cup from '../component/Organization'
const GroupMenu = ({setGcheckResult, setGroup, setCup}) => {
    const onClick = () => {
        setGcheckResult(true)
    }

    return (
        <div className = "header">
            <Space className='menu-set'>
                <div className = "input">
                    <div className = "text">盃賽名稱</div>
                    <Cup setGcheckResult = {setGcheckResult} setCup = {setCup} />
                </div>
                <div className = "input">
                    <div className = "text">組別名稱</div>
                    <Group setGcheckResult = {setGcheckResult} setGroup = {setGroup} />
                </div>   
                <div className = "input">
                    <Button onClick = {onClick} style={{ width: 80 }}>查詢</Button>
                </div>
            </Space>  
        </div>
    )
}

export default GroupMenu
