import Foundation

struct User: Identifiable, Hashable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(
            id: NSUUID().uuidString,
            username: "erica1234",
            profileImageUrl: "profile-photo-1",
            fullname: "Erica",
            bio: "Student",
            email: "erica@example.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "lalalalisa_m",
            profileImageUrl: "profile-photo-2",
            fullname: "Lalisa Manoban",
            bio: "LISA\nALTER EGO",
            email: "lisa@blackpink.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "jennierubyjane",
            profileImageUrl: "profile-photo-3",
            fullname: "Jennie Kim",
            bio: "J",
            email: "jennie@blackpink.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "roses_are_rosie",
            profileImageUrl: "profile-photo-4",
            fullname: "Roseanne Park",
            bio: "ROSÉ",
            email: "rose@blackpink.com"
        ),
        .init(
            id: NSUUID().uuidString,
            username: "sooyaaa__",
            profileImageUrl: "profile-photo-5",
            fullname: "Ji-soo Kim",
            bio: "JISOO🪐",
            email: "jisoo@blackpink.com"
        )
    ]
}
