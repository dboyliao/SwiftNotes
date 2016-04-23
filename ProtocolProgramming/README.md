# Notes

- `Self` in `protocol` declaration means the type which is going to conform to that protocol.
- If you declare a `protocol` to be `public`, all the properties defined in the protocol declaration become `public`. No privacy control keyword is allowed in the delcaration of `protocol`s.
- Make use of `extension` if you want to have some privacy control over `protocol`. In this case, no stored property is allowed. You can still make use of computed property to implement similar functionality.
- In the implementation of an protocol (such as defining a struct, enum or class), the required property can be both computed property or stroed property. As long as there is a property the meet the protocol interface, `swift` is happy.
- The implementation defined in `extension` serves the purpose of providing default implementation for the protocol. You are able to override it in your own implementation (no `override` keyword needed).
- When you try to extend default or external protocol, make use of `where` to limit the implementation of extension only apply to types you want.


# References

- [RayWenderLinch](https://www.raywenderlich.com/109156/introducing-protocol-oriented-programming-in-swift-2)