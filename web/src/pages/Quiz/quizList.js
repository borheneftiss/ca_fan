import React, { Component } from "react";
import { compose } from "redux";
import { connect } from "react-redux";
import "./quizList.css";
import { Link } from "react-router-dom";
import quiz from "../../assets/quiz/pageIndex/logo.png";
import { getQuizList } from "../../store/actions";
import Headder from "../../component/Header/header.js"
import Button from '@material-ui/core/Button';
import ContentLoader from 'react-content-loader'

import Footer from "../../component/footer/footer.js";

class QuizList extends Component {
    constructor(props) {
      super(props);
    
      this.handleClick = this.handleClick.bind(this);
      this.handleShow = this.handleShow.bind(this);
    }
    componentWillMount() {
      this.props.getQuizList();
  }
    componentDidMount() {
        this.props.getQuizList();
    }
      
    handleClick = (e, dataa) => {
     localStorage.setItem('quizID',dataa);
   
      this.refs.startgame.style.display = 'block';
      this.refs.QuizList.style.display = 'none'; 
      
    }
    handleShow = (e, data) => {
      localStorage.setItem('quizID',data);
     
    }
   /*   <Link to="/startquiz" style={{ textDecoration: "none"}}   
         */
  
    render() {
     let active;
     const { isLoading } = this.props;
        return (
            <div style={{textAlign : "center"}}>
                 {/* <HeaderGame />  */}
                 <Headder/>
                <div className="imgquizstyle"><img alt="" src={quiz} className="quizIcons"/></div>
                
                {/* quiz list */}
                  <div id="QuizList" ref="QuizList">
                    <div className="QuizsText">
                        <p>Choisissez parmis l'une des catégories <br/>Et commencer à répondre à toutes les questions </p>
                    </div>
                    {isLoading ? (
        
                    <div style={{marginLeft:"30%"}}> 
                      <ContentLoader
                      height={100}
                      width={400}
                      speed={1}
                      >

                      <rect x="0" y="0" rx="5" ry="5" width="50" height="50" />
                      <rect x="60" y="0" rx="5" ry="5" width="50" height="50" />
                      <rect x="120" y="0" rx="5" ry="5" width="50" height="50" />
                      <rect x="180" y="0" rx="5" ry="5" width="50" height="50" />
                    
                      </ContentLoader> 
                    </div>
                    ) :  <div className=" equalHMVWrap eqWrap">
                    
        {(this.props.quiz_notfound==="quiz_non_trouves") ?   <span style={{
              color: "black",
              fontFamily: "Lato",
              fontSize: "18px",
              margin: "0 auto"
            }}>
              Aucun quiz est disponible pour l'instant!
            </span> : this.props.list_quiz.map(quizList => {
         
          if(quizList["active"] ===1)
            active =  (
        
             <div className=" equalHMV eq"  key={quizList.quizid}
              onClick={((e) => this.handleClick(e, quizList["quizid"]))}
              >
              <p className="quizsName" >{quizList["titre"]} </p>
              
              </div>
            ) 
          else if(quizList["active"] ===3)
             
              active =  ( <Link key={quizList.quizid} to="/responses" style={{ textDecoration: "none"}}
              className=" QuizAnswered equalHMV eq"
              onClick={((e) => this.handleShow(e, quizList["quizid"]))}
              > 
              <p className="quizsName" >{quizList["titre"]} </p>
             
              </Link> )
            
          else if(quizList["active"] ===0) 
              active=( <div   key={quizList.quizid}
            className=" QuizDesactive equalHMV eq" disabled
              >
              <p className="quizsName" >{quizList["titre"]} </p>
            
            </div> )
            return active;
      } )  }
    
    </div>
                 } 
              
                  </div> 
                  
                  {/* start game */}
                  <div style={{textAlign : "center", display:"none"}} id="startgame" ref="startgame">
                    <div className="startG">
                        <p className="GameText">Sur ce quiz, vous avez 3 chances de jouer. <br/>Si vous perdez toutes les chances,<br/> vous revenez à la première question</p>
                        <p className="winTxt">Montrez-nous, si vous étes un bon fan du club africain <br/> en répondant à toutes les questions!</p>
                    </div>
                    <Link to="/startquiz" style={{ textDecoration: "none"}}>
                      <Button variant="outlined" size="large" className="btnJouer"> 
                          JOUER
                      </Button>
                    </Link>
                  </div>

                  <div style={{position:"relative"}}><Footer/></div>
            </div>
        );
    }

}
const mapStateToProps = state => {
    return {    
       isLoading: state.ui.isLoading,
       list_quiz: state.list_quiz.list_quiz,
       quiz_notfound: state.quiz_notfound.quiz_notfound
       
    };
    
  };
const mapDispatchToProps = dispatch => {
    return {
        getQuizList: () => dispatch(getQuizList())       
      
    };
  };
  
export default compose(
    connect(
      mapStateToProps,
      mapDispatchToProps
    )
  )(QuizList);
