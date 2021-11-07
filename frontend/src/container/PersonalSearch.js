import { React}from 'react'
import "./PersonalSearch.css"
import PersonalMenu from './PersonalMenu'
import PersonalResult from './PersonalResult'



const PersonalSearch = ({setPcheckResult, setUnit, setName, PcheckResult , Unit, Name}) => {

    
    return (
        <div>
            <div className = "Pback">
                <p className = "PTitle">個人成績</p> 
                <div>
                    <PersonalMenu setPcheckResult = {setPcheckResult} setName = {setName} setUnit = {setUnit} />
                </div>
            </div>
            {PcheckResult?<PersonalResult Unit = {Unit} Name = {Name} /> : <></>}
        </div>
    )
}

export default PersonalSearch
