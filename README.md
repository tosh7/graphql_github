# GraphQL + GitHub
![](https://img.shields.io/badge/Xcode-13.4.1%2B-blue.svg)
![](https://img.shields.io/badge/iOS-15.0%2B-blue.svg)
![](https://img.shields.io/badge/Swift-5.6.1%2B-orange.svg)  

## What is this repository?
This project is accessing github api with GraphQL.

## What is GraphQL?
GraphQL is a query language for APIs and a runtime for fulfilling those queries with your existing data. GraphQL provides a complete and understandable description of the data in your API, gives clients the power to ask for exactly what they need and nothing more, makes it easier to evolve APIs over time, and enables powerful developer tools.  
Referenced by https://graphql.org/


## How to use
1. Clone this repository
2. Create `Secrets.plist`  
Inside of the plist is below.
```
<dict>
	<key>bearer_token</key>
	<string>(your_github_access_token)</string>
</dict>
```

## API references
https://docs.github.com/en/graphql

## Libraries
- [Apollo-iOS](https://github.com/apollographql/apollo-ios)
    - For GraphQL API calling
