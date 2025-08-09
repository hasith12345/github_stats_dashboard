import ballerina/http;

@http:ServiceConfig {
    cors: {
        allowOrigins: ["*"], 
        allowMethods: ["GET", "OPTIONS"], 
        allowHeaders: ["Content-Type"] 
    }
}

// Create an HTTP service to listen on localhost
service / on new http:Listener(8080) {

    
    resource function get [string owner]/[string repo]() returns json|error {
       
        string repoUrl = string `https://api.github.com/repos/${owner}/${repo}`;

        http:Client githubClient = check new (repoUrl);

        http:Response response = check githubClient->get("");

        json repoDetails = check response.getJsonPayload();

        return repoDetails;
    }
}
