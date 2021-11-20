import React, {useState} from 'react'
import { Layout, Menu } from 'antd'
import 'antd/dist/antd.css'
import './App.css'
import HomePage from "./container/HomePage"
import PersonalSearch from './container/PersonalSearch'
import GroupSearch from './container/GroupSearch'
import ScoreRegister from './container/ScoreRegister'
function App() {
  const { Header} = Layout;
  const [homeCheck, setHomecheck] = useState(true)
  const [PsearchCheck, setPsearchCheck] = useState(false)
  const [GsearchCheck, setGsearchCheck] = useState(false)
  const [registerCheck, setRegisterCheck] = useState(false)

  const [Unit, setUnit] = useState("")
  const [Name, setName] = useState("")
  const [Cup, setCup] = useState("")
  const [Group, setGroup] = useState("")
  const [Target, setTarget] = useState("")

  
  const [LiveResult, setLiveResult] = useState(false)
  const [PcheckResult, setPcheckResult] = useState(false)
  const [GcheckResult, setGcheckResult] = useState(false)
  const [ScheckResult, setScheckResult] = useState(false)


  const ToHomePage = () => {
    setHomecheck(true)
    setPsearchCheck(false)
    setGsearchCheck(false)
    setRegisterCheck(false)
    setLiveResult(false)
    setPcheckResult(false)
    setGcheckResult(false)
    setScheckResult(false)
  }
  const ToPersonalSerach = () => {
    setHomecheck(false)
    setPsearchCheck(true)
    setGsearchCheck(false)
    setRegisterCheck(false)
    setLiveResult(false)
    setPcheckResult(false)
    setGcheckResult(false)
    setScheckResult(false)
  }
  const ToGroupSearch = () => {
    setHomecheck(false)
    setPsearchCheck(false)
    setGsearchCheck(true)
    setRegisterCheck(false)
    setLiveResult(false)
    setPcheckResult(false)
    setGcheckResult(false)
    setScheckResult(false)
  }
  const ToScoreRigister = () => {
    setHomecheck(false)
    setPsearchCheck(false)
    setGsearchCheck(false)
    setRegisterCheck(true)
    setLiveResult(false)
    setPcheckResult(false)
    setGcheckResult(false)
    setScheckResult(false)
  }

  return (
    <>
      <Layout className="layout">
        <Header >
          <p className="title" >射箭計分系統</p>
          <Menu theme="dark" mode="horizontal" >
            <Menu.Item onClick = {ToHomePage}>首頁</Menu.Item>
            <Menu.Item onClick = {ToScoreRigister}>分數登錄</Menu.Item>
          </Menu>
        </Header>
        
      </Layout>
      {homeCheck?<HomePage ToPersonalSerach = {ToPersonalSerach} ToGroupSearch = {ToGroupSearch} ToScoreRigister = {ToScoreRigister}/>:<></>}
      {PsearchCheck?<PersonalSearch setPcheckResult = {setPcheckResult} setUnit = {setUnit} setName = {setName} PcheckResult = {PcheckResult} Unit = {Unit} Name = {Name} />:<></>}
      {GsearchCheck?<GroupSearch setGcheckResult = {setGcheckResult} setCup = {setCup} setGroup = {setGroup} Cup = {Cup} Group = {Group} GcheckResult = {GcheckResult}/>:<></>}
      {registerCheck?< ScoreRegister setLiveResult = {setLiveResult} setTarget = {setTarget} setScheckResult = {setScheckResult} setGroup = {setGroup} LiveResult = {LiveResult} ScheckResult = {ScheckResult} Group = {Group} Target = {Target}/>:<></>}
      
    </>
  );
}

export default App;
