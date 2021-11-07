import React from 'react'
import { Select } from 'antd';
import axios from 'axios';
import { useEffect, useState } from 'react';


const { Option } = Select;

const Cup = ({setGcheckResult, setCup}) => {
    const [Result, setResult] = useState([])
    useEffect(() => {
        axios.get('http://127.0.0.1:8000/api/cups')
        .then((res) => { 
            setResult(res.data)
        })
        .catch((error) => { console.log(error) })
    },[])

    const onChange = (value) => {
        console.log(`selected ${value}`);
        setCup(value)
        setGcheckResult(false)
    }

    return (
        <div>
            <Select
                
                style={{ width: 200 }}
                onChange={onChange}
            
                >
                {Result.map((Result)=>{
                    return <Option value={Result['cup']}>{Result['cup']}</Option>
                })}
            </Select>
        </div>
    )
}

export default Cup
