
import { Select } from 'antd';
import axios from 'axios';
import { useEffect, useState } from 'react';

const { Option } = Select;

const Group = ({setGcheckResult, setGroup}) => {

    const [ResultG, setResultG] = useState([])
    useEffect(() => {
        axios.get('http://127.0.0.1:8000/api/groups')
        .then((res) => { 
            setResultG(res.data)
        })
        .catch((error) => { console.log(error) })
    },[])

    const onChange = (value) => {
        console.log(`selected ${value}`);
        setGroup(value)
        setGcheckResult(false)
    }

    return (
         <div>
            <Select
                
                style={{ width: 200 }}
                onChange={onChange}
            
                >
                {ResultG.map((ResultG)=>{
                    return <Option value={ResultG['name']}>{ResultG['name']}</Option>
                })}
            </Select>
        </div>
    )
}

export default Group
