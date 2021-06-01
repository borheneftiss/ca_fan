import React from "react";
import "./media.css";
import Headder from "../../component/Header/header.js";
import Footer from "../../component/footer/footer.js";
import foot from "../../assets/media/foot.png";
import ReactPlayer from 'react-player'
import Slider from "react-slick";
import "../../../node_modules/slick-carousel/slick/slick.css";
import "../../../node_modules/slick-carousel/slick/slick-theme.css";
import history from "../../history";
import { connect } from "react-redux";
import { getarticles } from "../../store/actions";

class Media extends React.Component {
    
  componentDidMount() {
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
        const data = {
            token: localStorage.getItem('myToken') 
          }
        this.props.getarticles(data)
    }
}
    render() {
        const settings = {
            slidesToShow: 4,
            speed: 500,
            rows: 2,
            dots: true,
            arrows: false,
            responsive: [
                {
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 2,
                        infinite: true,
                        dots: true
                    }
                },
                {
                    breakpoint: 576,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 2,
                        infinite: true,
                        dots: true
                    }
                }
            ]
        };

        return (
            <div>
                <Headder />
                <div className="flex-container-media"><p id="interviewtitle" className="titlesection">actualités</p></div>
                
                <div style={{paddingTop: "25px"}} className="flex-container-media">
                    {this.props.DataArticles.map(DataArticles => (
                            <div className="columnmedia" key={DataArticles.id_Article}>
                              <div><img style={{ width: "100%" }} src={DataArticles["image_Article"]} alt="" /></div>
                              <div><p className="descimgMedia">{DataArticles["content_Article"]}</p></div>
                              <div><p className="TitleimgMedia">{DataArticles["title_Article"]}</p></div>
                          </div>
                    ))}
                </div>

                <div className="flex-container-media">
                    <div>
                        <p className="titlesection">interviews & vidéos</p>
                        <div style={{paddingTop: "25px"}}>
                            <ReactPlayer
                                url='https://www.youtube.com/watch?v=2M8HynW9tGs'
                                width='100%'
                                playing
                                muted={true}
                                 />
                        </div>
                    </div>
                </div>

                <div id="sliderphotos" className="flex-container-media">
                    <div className="SliderStyle">
                        <p className="titlesection">Photos</p>
                        <Slider {...settings}>
                            <div>
                                <img className="imgSlidSize" src={foot} alt="" />
                            </div>
                            <div>
                                <img className="imgSlidSize" src={foot} alt="" />
                            </div>
                            <div>
                                <img className="imgSlidSize" src={foot} alt="" />
                            </div>
                            <div>
                                <img className="imgSlidSize" src={foot} alt="" />
                            </div>
                            <div>
                                <img className="imgSlidSize" src={foot} alt="" />
                            </div>
                            <div>
                                <img className="imgSlidSize" src={foot} alt="" />
                            </div>
                            <div>
                                <img className="imgSlidSize" src={foot} alt="" />
                            </div>
                            <div>
                                <img className="imgSlidSize" src={foot} alt="" />
                            </div>
                        </Slider> 
                    </div>
            </div>
                 <div className="footermediapos"><Footer/></div>
            </div>
        );
    }
}

const mapStateToProps = state => {
    return {
    DataArticles: state.DataArticles.DataArticles,
    getArticlesResult: state.getArticlesResult.getArticlesResult,
    isLoading: state.ui.isLoading,
    };
  };

const mapDispatchToProps = dispatch => {
    return {
        getarticles: (token)=>dispatch(getarticles(token))
    };
  };

Media = connect(
  mapStateToProps,
  mapDispatchToProps
)(Media);

export default Media;