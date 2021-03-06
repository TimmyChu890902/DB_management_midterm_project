import {useState} from 'react'
import { Input, Space, Button} from 'antd'
import "./ScoreRegister.css"
import ScoreAssign from './ScoreAssign'
const ScoreMenu = ({setScheckResult, Target, setTarget, ScheckResult}) => {
    
    
    // const [ScoreReg, setScoreReg] = useState(false)
    // const [Currentset, setCurrentset] = useState(0)
    
    
    

    // useEffect(() => {
    // },[])

    const HadleTarget = () =>{
        setScheckResult(true)
    }

   


    return (
        <>
            <div className = "header">
                <Space className='menu-set'>
                    <div className = "input">
                        <div className = "text">靶位</div>
                        <Input onChange = {(e) => {
                            setTarget(e.target.value)
                            setScheckResult(false)
                            console.log(e.target.value)
                        }}/>
                    </div> 
                    <div className = "input">
                        <Button 
                        onClick = {HadleTarget}
                         style={{ width: 80 }}>登記
                        </Button>
                    </div>
                </Space>
            </div>
            {ScheckResult?<ScoreAssign setScheckResult = {setScheckResult} Target = {Target}/>:<></>}
        </>
    )
}

export default ScoreMenu
