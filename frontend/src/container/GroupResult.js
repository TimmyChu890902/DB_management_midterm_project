
import {Table} from 'antd';
import axios from 'axios';
import { useState, useEffect } from 'react';
const columns = [
    {
      title: '單位',
      dataIndex: 'unit',
      key: 'unit',
    },
    {
      title: '姓名',
      dataIndex: 'name',
      key: 'name',
    },
    {
        title: '10+X',
        dataIndex: 'tenX',
        key: 'tenX',
    },
    {
        title: 'X',
        dataIndex: 'X',
        key: 'X',
    },
    {
        title: '總成績',
        dataIndex: 'total',
        key: 'total',
    },
    {
        title: '排名',
        dataIndex: 'rank',
        key: 'rank',
    },
];

// const data = [
//     {
//         key:'1',
//         unit:'臺灣大學',
//         name:'王曉明',
//         tenX:20,
//         X:10,
//         total:353,
//         rank:1
//     },
//     {
//         key:'2',
//         unit:'臺灣大學',
//         name:'王小美',
//         tenX:15,
//         X:7,
//         total:330,
//         rank:2
//     },
//     {
//         key:'2',
//         unit:'臺灣大學',
//         name:'李大美',
//         tenX:15,
//         X:7,
//         total:360,
//         rank:4
//     },
// ];

const GroupResult = ({Cup, Group}) => {
    const [Cresult, setCresult] = useState([])
    useEffect(() => {
        axios.post('http://127.0.0.1:8000/api/search/cup', {
        "cup": Cup,
        "group": Group
        })
        .then((res) => { 
            setCresult(res.data)
        })
        .catch((error) => { console.log(error) })
    },[])
    return (
        <div>
            <p>成績排名</p>
            <Table columns={columns} dataSource={Cresult} />
        </div>
    )
}

export default GroupResult
