import {useState, useEffect, axios} from 'react'
import Score from '../component/Score'
import { Input, Space, Button} from 'antd'
import "./ScoreRegister.css"

const ScoreMenu = ({setScheckResult}) => {
    const [Score1, setScore1] = useState(0)
    const [Score2, setScore2] = useState(0)
    const [Score3, setScore3] = useState(0)
    const [Score4, setScore4] = useState(0)
    const [Score5, setScore5] = useState(0)
    const [Score6, setScore6] = useState(0)
    
    const [Target, setTarget] = useState("")
    const [IndividualsSet, setIndividualsSet] = useState([])

    let Total = Score1+Score2+Score3+Score4+Score5+Score6
    

    useEffect(() => {
        axios.get(`http://127.0.0.1:8000/api/scoreboard/${Target}`)
        .then((res) => { 
            setIndividualsSet(res.data)
        })
        .catch((error) => { console.log(error) })
    },[])

    

    return (
        <>
            <div className = "header">
                <Space className='menu-set'>
                    <div className = "input">
                        <div className = "text">靶位</div>
                        <Input onChange = {(value) => {
                            setTarget(value)
                            console.log(value)
                        }}/>
                    </div> 
                    <div className = "input">
                        <Button 
                        // onClick = {() =>{
                        //     axios.get(`http://127.0.0.1:8000/api/scoreboard/${Target}`)
                        //         .then((res) => { 
                        //             setIndividualsSet(res.data)
                        //         })
                        //         .catch((error) => { console.log(error) })
                        //     }}
                         style={{ width: 80 }}>登記
                        </Button>
                    </div>
                </Space>
            </div>
            <div className = "header">
                <Space className='menu-set'>
                    
                    <div className = "input">
                        <div className = "text">第{IndividualsSet.set}波</div>
                    </div>
                    <div className = "input">
                        <div className = "text">分數1</div>
                        <Score onChange = {(value) => {
                            if(value === "x"){
                                value = "10"
                            }
                            setScore1(parseInt(value))
                            
                        } }/>
                    </div>
                    <div className = "input">
                        <div className = "text">分數2</div>
                        <Score onChange = {(value) => {
                            if(value === "x"){
                                value = "10"
                            }
                            setScore2(parseInt(value))
                            // setTotal(Score1+Score2+Score3+Score4+Score5+Score6)
                        } }/>
                    </div>
                    <div className = "input">
                        <div className = "text">分數3</div>
                        <Score onChange = {(value) => {
                            if(value === "x"){
                                value = "10"
                            }
                            setScore3(parseInt(value))
                            // setTotal(Score1+Score2+Score3+Score4+Score5+Score6)
                        } }/>
                    </div>  
                    <div className = "input">
                        <div className = "text">分數4</div>
                        <Score onChange = {(value) => {
                            if(value === "x"){
                                value = "10"
                            }
                            setScore4(parseInt(value))
                            // setTotal(Score1+Score2+Score3+Score4+Score5+Score6)
                        } }/>
                    </div>  
                    <div className = "input">
                        <div className = "text">分數5</div>
                        <Score onChange = {(value) => {
                            if(value === "x"){
                                value = "10"
                            }
                            setScore5(parseInt(value))
                            // setTotal(Score1+Score2+Score3+Score4+Score5+Score6)
                        } }/>
                    </div>  
                    <div className = "input">
                        <div className = "text">分數6</div>
                        <Score onChange = {(value) => {
                            if(value === "x"){
                                value = "10"
                            }
                            setScore6(parseInt(value))
                            // setTotal(Score1+Score2+Score3+Score4+Score5+Score6)
                        } }/>
                    </div>  
                    <div className = "input">
                        <div className = "text">總分<br/>{Total}分</div>
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
