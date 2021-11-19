
import { Select } from 'antd';
import axios from 'axios';
import { useEffect, useState } from 'react';

const { Option } = Select;

const LiveSearchGroup = ({setGcheckResult, setGroup, GcheckResult}) => {

    const [ResultG, setResultG] = useState([])
    useEffect(() => {
        axios.get('http://127.0.0.1:8000/api/groups?format=json')
        .then((res) => { 
            setResultG(res.data)
        })
        .catch((error) => { console.log(error) })
    },[])

    const onChange = (value) => {
        console.log(`selected ${value}`)
        setGcheckResult(true)
        setGroup(value) 
        console.log(GcheckResult)
    }
    const onDropdownVisibleChange = () => {
        
        console.log("哭阿")
        setGcheckResult(false)
        
    }
    return (
         <div style = {{display: "flex", justifyContent:"center", alignItems:"center"}}>
            <Select
                
                style={{ width: 200 }}
                onChange={onChange}
                onFocus = {onDropdownVisibleChange}
                >
                {ResultG.map((ResultG)=>{
                    return <Option value={ResultG['g_name']}>{ResultG['g_name']}</Option>
                })}
            </Select>
        </div>
    )
}

export default LiveSearchGroup
