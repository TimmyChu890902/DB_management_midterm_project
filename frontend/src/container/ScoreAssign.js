import React from 'react'
import axios from 'axios'
import {useState, useEffect} from 'react'
import Score from '../component/Score'
import { Input, Space, Button} from 'antd'
import "./ScoreRegister.css"

const ScoreAssign = ({Target, setScheckResult}) => {
    const [Score1, setScore1] = useState(0)
    const [Score2, setScore2] = useState(0)
    const [Score3, setScore3] = useState(0)
    const [Score4, setScore4] = useState(0)
    const [Score5, setScore5] = useState(0)
    const [Score6, setScore6] = useState(0)

    const [IndividualsSet, setIndividualsSet] = useState(0)

    const Total = (s1, s2, s3, s4, s5, s6) => {
        if(s1 === "x")
            s1 = "10"
        if(s2 === "x")
            s2 = "10"
        if(s3 === "x")
            s3 = "10"
        if(s4 === "x")
            s4 = "10"
        if(s5 === "x")
            s5 = "10"
        if(s6 === "x")
            s6 = "10"
        return(parseInt(s1)+parseInt(s2)+parseInt(s3)+parseInt(s4)+parseInt(s5)+parseInt(s6))
        
    }
    useEffect(() => {
        axios.post('http://127.0.0.1:8000/api/scoreboard/target', {
        "target": Target
        })
        .then((res) => { 
            console.log(res.data)
            setIndividualsSet(res.data[0]['set'])
            // console.log(IndividualsSet['set'])

        })
        .catch((error) => { 
            console.log(error)
            setScheckResult(false)
        })
    },[])

     const ScoreSubmit = () => {
        let X = 0
        let TenX = 0
        let score = 0
        if(Score1 === "x"){
            X++
            TenX++
        }
        else if(Score1 === "10")
            TenX++

        if(Score2 === "x"){
            X++
            TenX++
        }
        else if(Score2 === "10")
            TenX++
        
        if(Score3 === "x"){
            X++
            TenX++
        }
        else if(Score3 === "10")
            TenX++
        
        if(Score4 === "x"){
            X++
            TenX++
        }
        else if(Score4 === "10")
            TenX++
        
        if(Score5 === "x"){
            X++
            TenX++
        }
        else if(Score5 === "10")
            TenX++

        if(Score6 === "x"){
            X++
            TenX++
        }
        else if(Score6 === "10")
            TenX++
        score = Total(Score1, Score2, Score3, Score4, Score5, Score6)

        setIndividualsSet(IndividualsSet + 1)
        
        axios.post('http://127.0.0.1:8000/scoreboard/individual', {
            "target": Target,
            "tenX":TenX,
            "X":X,
            "score":score
    
            })
            .then((res) => { 
                
            })
            .catch((error) => { console.log(error) })

    
}

    return (
        <div className = "header">
                <Space className='menu-set'>
                    
                    <div className = "input">
                        <div className = "text">第{IndividualsSet > 5?"X":IndividualsSet + 1}波</div>
                    </div>
                    <div className = "input">
                        <div className = "text">分數1</div>
                        <Score onChange = {(value) => {
                            setScore1(value)
                        } }/>
                    </div>
                    <div className = "input">
                        <div className = "text">分數2</div>
                        <Score onChange = {(value) => {
                            setScore2(value)
                            // setTotal(Score1+Score2+Score3+Score4+Score5+Score6)
                        } }/>
                    </div>
                    <div className = "input">
                        <div className = "text">分數3</div>
                        <Score onChange = {(value) => {
                            setScore3(value)
                            // setTotal(Score1+Score2+Score3+Score4+Score5+Score6)
                        } }/>
                    </div>  
                    <div className = "input">
                        <div className = "text">分數4</div>
                        <Score onChange = {(value) => {
                            setScore4(value)
                            // setTotal(Score1+Score2+Score3+Score4+Score5+Score6)
                        } }/>
                    </div>  
                    <div className = "input">
                        <div className = "text">分數5</div>
                        <Score onChange = {(value) => {
                            setScore5(value)
                            // setTotal(Score1+Score2+Score3+Score4+Score5+Score6)
                        } }/>
                    </div>  
                    <div className = "input">
                        <div className = "text">分數6</div>
                        <Score onChange = {(value) => {
                            setScore6(value)
                            // setTotal(Score1+Score2+Score3+Score4+Score5+Score6)
                        } }/>
                    </div>  
                    <div className = "input">
                        <div className = "text">總分<br/>{Total(Score1, Score2, Score3, Score4, Score5, Score6)}分</div>
                    </div>    
                    <div className = "input">
                        {IndividualsSet > 5?<Button disabled style={{ width: 80 }}>登記</Button>:<Button onClick = {ScoreSubmit} style={{ width: 80 }}>登記</Button>}
                    </div>
                </Space>
            </div>
    )
}

export default ScoreAssign
