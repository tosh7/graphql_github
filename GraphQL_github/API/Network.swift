import Foundation
import Apollo

final class Network {
    static let shared = Network()

    private(set) lazy var apollo: ApolloClient = {
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)

        let client = URLSessionClient()
        let provider = NetworkInterceptorProvider(store: store, client: client)
        let url = URL(string: "https://api.github.com/graphql")!

        let authHeader = ["Authorization": "bearer \(Utils.bearerToken)"]
        let requestChainTransport = RequestChainNetworkTransport(interceptorProvider: provider, endpointURL: url, additionalHeaders: authHeader)

        return ApolloClient(networkTransport: requestChainTransport, store: store)
    }()
}
