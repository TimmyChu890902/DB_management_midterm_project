import React from 'react'
import Organization from '../component/Organization'
import { Input, Space, Button} from 'antd'
import "./PersonalSearch.css"



const PersonalMenu = ({setPcheckResult, setName, setUnit}) => {
    const ChangeName = (e) => {
        console.log(e.target.value)
        setName(e.target.value)
        setPcheckResult(false)
    } 
    const onClick = () => {
        setPcheckResult(true)
    }

    return (
        <div className = "header">
            <Space className='menu-set'>
                <div className = "input">
                    <div className = "text">參賽單位</div>
                    <Organization setPcheckResult = {setPcheckResult} setUnit = {setUnit}/>
                </div>
                <div className = "input">
                    <div className = "text">姓名</div>
                    <Input onChange = {ChangeName} />
                </div>   
                <div className = "input">
                    <Button onClick = {onClick} style={{ width: 80 }}>查詢</Button>
                </div>
            </Space>  
        </div>
    )
}

export default PersonalMenu
