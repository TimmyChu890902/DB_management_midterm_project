import React from 'react'
import { Select } from 'antd';


const { Option } = Select;

const Score = ({onChange}) => {

    return (
        <>
           <Select onChange = {onChange} defaultValue="請選擇" style={{ width: 100 }}>
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
                <Option value="x">x</Option>
                <Option value="0">m</Option>
                

            </Select> 
        </>
    )
}

export default Score
