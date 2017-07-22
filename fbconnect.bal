import org.wso2.ballerina.connectors.facebook;


function getusers () (message){
    
    facebook:ClientConnector conn = create  facebook:ClientConnector("EAACEdEose0cBAOS56WNnJaZBffMj4LXOMP6pY6DnqTMpL4B67uh54vUZC48degoZAFZCHeUdKGsPmGk9oeIijnOKw1ZAlg8JvZBLjoe7wZBwwwQDTVAHas0d4PZAOs6hIwhXBKDl17RHSnHDvgRF1ANNEyqOBn9w4Qherj6gMheXqywk9EZA7OPaKcsIxnSOKY2QZD");
    message s = facebook:ClientConnector.retrievePost(conn, "me/friends?fields=id,name,birthday","null");
    
    
    
    return s;
}
