import ballerina.data.sql;
import ballerina.lang.system;

sql:ClientConnector DB;

function main (string[] args) {
    string url = "jdbc:mysql://localhost:3306/fb_wishes_db";
    string userName = "root";
    string password = "1314246";
    map props = {"jdbcUrl": url, "username": userName, "password": password};
    DB = create sql:ClientConnector (props);
    // name();
    //saveData("23423432","Gikka Munaya");
    saveFriend();
    
}

function name () {
    sql:Parameter para11 = {sqlType: "integer", value: 1};
    sql:Parameter[] params = [];
    params = [para11];
    // getData("select * from user1 where status=?", para11);
    datatable dt = sql:ClientConnector.select(DB, "select * from user1 where status=?", params);
    var jsonRes,e =  <json>dt;
    system:println(jsonRes);
}

function saveUser(string userFbId,string username) {
    transaction {
         sql:Parameter para11 = {sqlType: "varchar",value: userFbId};
          sql:Parameter para12 = {sqlType: "varchar",value: username};
            sql:Parameter para13 = {sqlType: "varchar",value: "1"};
        sql:Parameter[] parameters =[para11,para12,para13];
        
        int count = sql:ClientConnector.update(DB, "Insert into User1(user_fb_id,user_name,status)values(?,?, ?)", parameters);
      
        system:println("Inserted count:" + count);
        if (count == 0) {
            abort;
        }
    } aborted {
        system:println("Transaction aborted");
    } committed {
        system:println("Transaction committed");
    }
}
function saveFriend() {
    json s = <json> getusers();
    
    
    system:println(s);
    
    // transaction {
    //      sql:Parameter para11 = {sqlType: "varchar",value: userFbId};
    //       sql:Parameter para12 = {sqlType: "varchar",value: username};
    //         sql:Parameter para13 = {sqlType: "varchar",value: "1"};
    //     sql:Parameter[] parameters =[para11,para12,para13];
        
    //     int count = sql:ClientConnector.update(DB, "Insert into User1(user_fb_id,user_name,status)values(?,?, ?)", parameters);
      
    //     system:println("Inserted count:" + count);
    //     if (count == 0) {
    //         abort;
    //     }
    // } aborted {
    //     system:println("Transaction aborted");
    // } committed {
    //     system:println("Transaction committed");
    // }
}

