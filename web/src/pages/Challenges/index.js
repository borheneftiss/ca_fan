import React, { Component } from "react";
import "./index.css";
import { Link } from "react-router-dom";

import game1 from "../../assets/challenges/logo_quiz.png";
import game2 from "../../assets/challenges/logo_marki.png";
import game3 from "../../assets/challenges/logo_tachkiltek.png";
import game4 from "../../assets/challenges/challengegame.png";
import game5 from "../../assets/challenges/pronostic.png";
import { connect } from "react-redux";

import Headder from "../../component/Header/header.js";
import Footer from "../../component/footer/footer.js";

import history from "../../history";
import firebase from 'firebase';

/*function toTimestamp(strDate) {
    var datum = Date.parse(strDate);
    return datum / 1000;
}*/
class Challenges extends Component {

    async askForPermissioToReceiveNotifications (){
        console.log("yoooooooooooooo")
          try {
            const messaging = firebase.messaging();
            await messaging.requestPermission();
            const token = await messaging.getToken();
            console.log('token do usuário:', token);
            localStorage.setItem("token_notif_user",token) 
            return token;
          } catch (error) {
            console.error(error);
          }
        }


    componentDidMount() {
        /*var today=new Date()
        var date = (today.getMonth() + 1)+ '/' +  today.getDate() + '/' + today.getFullYear()+ ' '+ today.getHours()+ ':'+ today.getMinutes()+ ':'+ today.getSeconds();
        console.log(toTimestamp(date));
        var timestampcurrentdate=toTimestamp(date)
        if(localStorage.getItem("tokendateexpir")<timestampcurrentdate){
            history.push("/authentification");
            localStorage.setItem("myToken","")
        }*/

        var tokendateexpir = localStorage.getItem("tokendateexpir");
        var date = new Date(tokendateexpir * 1000);

        var now = Math.floor(new Date() / 1000);
        var datenow = new Date(now * 1000);

        if (datenow > date) {
            console.log("now > date");
            history.push("/authentification");
            localStorage.setItem("myToken", "");
        }
        else {
            this.askForPermissioToReceiveNotifications()
        }
    }

    render() {
        return (
            <div>
                <div>
                    <Headder />
                    <div className="challengesTxt">
                        <p className="pointText">Vous avez <span>{this.props.datauser.nbpoint}</span> points</p>
                        <p className="collectText">Plus vous jouez, plus vous gagnez des points !</p>
                        {/* <p className="winText">Plus vous jouez, plus vous gagnez des points !</p> */}
                    </div>
                    <div className="gridChallenge">

                        <div className="ColChallenge">
                            <div className="ColChallenge-Top">
                                <img alt="" className="imgGame1" src={game1} />
                            </div>
                            <Link to="/quiz" className="ColChallenge-Bottom">
                                <div>
                                    <p>JOUEZ</p>
                                </div>
                            </Link>
                        </div>
                        <div className="ColChallenge">
                            <div className="ColChallenge-Top">
                                <img alt="" className="imgGame2" src={game2} />
                            </div>
                            <div className="ColChallenge-Bottom">
                                <p>JOUEZ</p>
                            </div>
                        </div>
                        <div className="ColChallenge">
                            <div className="ColChallenge-Top">
                                <img alt="" className="imgGame4" src={game3} />
                            </div>
                            <div className="ColChallenge-Bottom">
                                <p>JOUEZ</p>
                            </div>
                        </div>
                        <div className="ColChallenge">
                            <div className="ColChallenge-Top">
                                <img alt="" className="imgGamechal" src={game4} />
                            </div>
                            <div className="ColChallenge-Bottom">
                                <p>JOUEZ</p>
                            </div>
                        </div>
                        <div className="ColChallenge">
                            <div className="ColChallenge-Top">
                                <img alt="" className="imgGame5" src={game5} />
                            </div>
                            <div className="ColChallenge-Bottom">
                                <p>JOUEZ</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div>
                    <Footer />
                </div>
            </div>
        );
    }

}

const mapStateToProps = state => {
    return {
        datauser: state.datauser.datauser

    };
};

const mapDispatchToProps = dispatch => {
    return {

    };
};


Challenges = connect(
    mapStateToProps,
    mapDispatchToProps
)(Challenges);
export default (Challenges);
