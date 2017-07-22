import ballerina.net.http;
import ballerina.lang.messages;
import ballerina.lang.system;

@http:configuration { basePath: "/Service1"}
service<http> Service1 {

    @http:GET {}
    @http:Path{value:"/getUserList"}
    resource getUserList (message m) {
        message response = {};
        
        messages:setStringPayload(response, getuserlist());
        reply response;
    }

}
