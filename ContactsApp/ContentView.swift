import SwiftUI

struct ContentView: View {
    @State private var contacts: [Contact] = []
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var phoneNumber = ""

    var body: some View {
        NavigationView {
            VStack {
                List(contacts) { contact in
                    NavigationLink(destination: Text(contact.phoneNumber)) {
                        Text("\(contact.firstName) \(contact.lastName)")
                    }
                }
               
                Form {
                    Section(header: Text("Add Contact")) {
                        TextField("First Name", text: $firstName)
                        TextField("Last Name", text: $lastName)
                        TextField("Phone Number", text: $phoneNumber)
                        Button("Add") {
                            let newContact = Contact(firstName: firstName, lastName: lastName, phoneNumber: phoneNumber)
                            contacts.append(newContact)
                            firstName = ""
                            lastName = ""
                            phoneNumber = ""
                        }
                    }
                }
            }
        }
        .frame(minWidth: 300, idealWidth: 400, maxWidth: .infinity, minHeight: 400, idealHeight: 600, maxHeight: .infinity)
        .navigationTitle("Contacts")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

