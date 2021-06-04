
function fn(){
    var config=
        {
            baseUrl: "https://reqres.in",
            listUsers: "/api/users?page=2"
        }
    karate.log("From karate-config file");
    karate.configure("ssl",false);
    karate.configure("afterScenario",function(){karate.log('after scenario inside config');});
    karate.configure('connectTimeout', 5000);

    karate.configure('readTimeout', 5000);
    return config;
}
// karate.callSingle("classpath:karate-config.js");


