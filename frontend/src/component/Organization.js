import axios from 'axios';
import { useEffect, useState } from 'react';
import { Select } from 'antd';

const { Option } = Select;

const Organization = ({setPcheckResult, setUnit}) => {
    
    const [Org, setOrg] = useState([])
    useEffect(() => {
        axios.get('http://127.0.0.1:8000/api/cups')
        .then((res) => { 
          setOrg(res.data)
        })
        .catch((error) => { console.log(error) })
    },[])

    const onChange = (value) => {
        console.log(`selected ${value}`);
        setUnit(value)
        setPcheckResult(false)
    }

    return (
        <div>
            <Select
                
                style={{ width: 200 }}
                onChange={onChange}
            
                >
                {Org.map((Org)=>{
                    return <Option value={Org['host']}>{Org['host']}</Option>
                })}
            </Select>
        </div>
    )
}

export default Organization
