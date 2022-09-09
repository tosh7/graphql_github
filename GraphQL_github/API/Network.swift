import Foundation
import Apollo

final class Network {
    static let shared = Network()

    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://api.github.com/graphql")!)
}
