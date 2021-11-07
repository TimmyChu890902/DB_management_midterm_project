import React from 'react'
import Score from '../component/Score'
import { Input, Space, Button} from 'antd'
import "./ScoreRegister.css"
const ScoreMenu = () => {
    return (
        <>
            <div className = "header">
                <Space className='menu-set'>
                    <div className = "input">
                        <div className = "text">把位</div>
                        <Input/>
                    </div> 
                    <div className = "input">
                        <Button style={{ width: 80 }}>登記</Button>
                    </div>
                </Space>
            </div>
            <div className = "header">
                <Space className='menu-set'>
                    <div className = "input">
                        <div className = "text">第一波</div>
                    </div>
                    <div className = "input">
                        <div className = "text">分數一</div>
                        <Score/>
                    </div>
                    <div className = "input">
                        <div className = "text">分數二</div>
                        <Score/>
                    </div>
                    <div className = "input">
                        <div className = "text">分數三</div>
                        <Score/>
                    </div>  
                    <div className = "input">
                        <div className = "text">分數四</div>
                        <Score/>
                    </div>  
                    <div className = "input">
                        <div className = "text">分數五</div>
                        <Score/>
                    </div>  
                    <div className = "input">
                        <div className = "text">分數六</div>
                        <Score/>
                    </div>     
                    <div className = "input">
                        <Button style={{ width: 80 }}>登記</Button>
                    </div>
                </Space>
            </div>
        </>
    )
}

export default ScoreMenu
