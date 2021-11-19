
import { Table} from 'antd';
import axios from 'axios';
import { useState, useEffect } from 'react';

const columns_person = [
    {
      title: '盃賽',
      dataIndex: 'cup',
      key: 'cup',
    },
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

const columns_group = [
    {
      title: '盃賽',
      dataIndex: 'cup',
      key: 'cup',
    },
    {
      title: '隊名',
      dataIndex: 'name',
      key: 'name',
    },
    {
        title: '姓名1',
        dataIndex: 'p1_name',
        key: 'p1_name',
    },
    {
        title: '成績',
        dataIndex: 'score1',
        key: 'score1',
    },
    {
        title: '姓名2',
        dataIndex: 'p2_name',
        key: 'p2_name',
    },
    {
        title: '成績',
        dataIndex: 'score2',
        key: 'score2',
    },
    {
        title: '姓名3',
        dataIndex: 'p3_name',
        key: 'p3_name',
    },
    {
        title: '成績',
        dataIndex: 'score3',
        key: 'score3',
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

const data_person = [
    {
        key:'1',
        cup:'109 椰林盃',
        unit:'台灣大學',
        name:'王曉明',
        tenX:20,
        X:10,
        total:353,
        rank:1
    },
    {
        key:'2',
        cup:'108 椰林盃',
        unit:'台灣大學',
        name:'王曉明',
        tenX:15,
        X:7,
        total:330,
        rank:2
    },
    {
        key:'3',
        cup:'107 椰林盃',
        unit:'台灣大學',
        name:'王曉明',
        tenX:13,
        X:7,
        total:400,
        rank:3
    },
];

const data_group = [
    {
        key:'1',
        cup:'109 椰林盃',
        name:'我們一隊',
        p1_name:'王曉明',
        score1:353,
        p2_name:'小A',
        score2:340,
        p3_name:'小B',
        score3:345,
        total:1038,
        rank:1
    },
    {
        key:'2',
        cup:'108 椰林盃',
        name:'我們隊',
        p1_name:'小C',
        score1:350,
        p2_name:'王曉明',
        score2:340,
        p3_name:'小D',
        score3:345,
        total:1035,
        rank:2
    }
];

const PersonalResult = ({Name, Unit}) => {
    const [Presult, setPresult] = useState([])
    const [Gresult, setGresult] = useState([])
    useEffect(() => {
      axios.post('http://127.0.0.1:8000/api/search/individual', {
        "unit": Unit,
        "name": Name
      })
      .then((res) => { 
        setPresult(res.data)
      })
      .catch((error) => { console.log(error) });

      axios.post('http://127.0.0.1:8000/api/search/team', {
        "unit": Unit,
        "name": Name
      })
      .then((res) => { 
        setGresult(res.data)
      })
      .catch((error) => { console.log(error) })
    },[])

    return (
        <div>
            <p>個人賽歷史成績</p>
            <Table columns={columns_person} dataSource={Presult} />
            <p>團體賽歷史成績</p>
            <Table columns={columns_group} dataSource={Gresult} />
        </div>
    )
}

export default PersonalResult
