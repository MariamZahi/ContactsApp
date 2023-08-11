import SwiftUI

struct ContentView: View {
    @State private var contacts: [Contact] = []
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var phoneNumber = ""

    var body: some View {
        VStack {
            List(contacts) { contact in
                Text("\(contact.firstName) \(contact.lastName)")
            }

            Divider()

            HStack {
                VStack(alignment: .leading) {
                    Text("First Name:")
                    TextField("Enter first name", text: $firstName)
                }

                VStack(alignment: .leading) {
                    Text("Last Name:")
                    TextField("Enter last name", text: $lastName)
                }

                VStack(alignment: .leading) {
                    Text("Phone Number:")
                    TextField("Enter phone number", text: $phoneNumber)
                }

                Button("Add Contact") {
                    let newContact = Contact(firstName: firstName, lastName: lastName, phoneNumber: phoneNumber)
                    contacts.append(newContact)
                    firstName = ""
                    lastName = ""
                    phoneNumber = ""
                }
            }
            .padding()
        }
        .frame(minWidth: 400, minHeight: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
