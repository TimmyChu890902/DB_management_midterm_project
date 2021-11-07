import React from 'react'
import { Select } from 'antd';


const { Option } = Select;

const Score = () => {
    return (
        <div>
           <Select defaultValue="1" style={{ width: 100 }}>
                <Option value="1">1</Option>
                <Option value="2">2</Option>
                <Option value="3">3</Option>
                <Option value="4">4</Option>
                <Option value="5">5</Option>
                <Option value="6">6</Option>
                <Option value="7">7</Option>
                <Option value="8">8</Option>
                <Option value="9">9</Option>
                <Option value="10">10</Option>
                <Option value="10">x</Option>
                <Option value="0">m</Option>
                

            </Select> 
        </div>
    )
}

export default Score
