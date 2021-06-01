import firebase from 'firebase';


export const initializeFirebase = () => {
  firebase.initializeApp({
    messagingSenderId: "164607836087"
  });

  navigator.serviceWorker
    .register('/my-sw.js')
    .then((registration) => {
      firebase.messaging().useServiceWorker(registration);
    });

}

//Requesting permission to send notifications
export const askForPermissioToReceiveNotifications = async () => {
  console.log("yoooooooooooooo")
    try {
      const messaging = firebase.messaging();
      await messaging.requestPermission();
      const token = await messaging.getToken();
      console.log('token do usuário:', token);
      localStorage.setItem("tokenuser",token)
      
      return token;
    } catch (error) {
      console.error(error);
    }
  }
