# WhatsApp Clone - Assembly Language Implementation

A fully functional messaging system written in x86 Assembly Language using the Irvine32 library. This application mimics core WhatsApp features including authentication, direct messaging, group chats, and message scheduling.

## 🚀 Features

### Authentication System
- **Sign Up**: Create new user accounts with encrypted password storage
- **Sign In**: Secure login with password masking (asterisks display)
- **Account Security**: 3-attempt login limit with account lockout protection
- **Data Encryption**: XOR-based encryption for sensitive data

### Contact Management
- **Add Contacts**: Search and add users to your contact list
- **View Contacts**: Display all saved contacts with unread message indicators
- **Auto-Add**: Automatic contact creation when receiving messages
- **Encrypted Storage**: Contact names stored with encryption

### Direct Messaging
- **Real-time Chat**: Send and receive messages instantly
- **Message History**: View last 10 messages with scroll functionality
- **Message Status**: Visual indicators (sent ✓, delivered ✓✓, read ✓✓)
- **Scheduled Messages**: Schedule messages for specific times (HH:MM format)
- **Timestamps**: Each message includes sender name and time
- **Unread Notifications**: Track unread messages from contacts

### Group Chat System
- **Create Groups**: Set up group chats with custom names
- **Member Management**: Add multiple members to groups
- **Group Admin**: Creator automatically designated as admin [ADMIN]
- **Group Messaging**: Broadcast messages to all group members
- **Member List**: View all group members with admin indicators
- **Auto-Enrollment**: Groups automatically added to member lists

### File Management
- **User Files**: `username.dat` - User credentials
- **Contacts**: `username_contacts.dat` - Contact lists
- **Groups**: `username_groups.dat` - User's group memberships
- **Chats**: `user1_user2_chat.dat` - Direct message history
- **Group Chats**: `group_groupname_groupchat.dat` - Group message history
- **Group Members**: `group_groupname_members.dat` - Member lists

## 📋 Requirements

- **Assembler**: MASM (Microsoft Macro Assembler)
- **Library**: Irvine32.inc and Irvine32.lib
- **OS**: Windows (32-bit compatible)
- **IDE**: Visual Studio or compatible MASM environment

## 🛠️ Installation & Setup

1. **Install MASM and Irvine32 Library**
   - Download Irvine32 library from [Kip Irvine's website](http://www.kipirvine.com/asm/)
   - Set up include and library paths in your environment

2. **Compile the Project**
   ```bash
   ml /c /coff /Cp WhatsAppClone.asm
   link /SUBSYSTEM:CONSOLE WhatsAppClone.obj
   ```

3. **Run the Application**
   ```bash
   WhatsAppClone.exe
   ```

## 📖 Usage Guide

### Getting Started
1. **Launch** the application
2. **Sign Up** with a unique username and password
3. **Sign In** with your credentials

### Adding Contacts
1. Select "Add New Contact" from main menu
2. Enter the username of an existing user
3. Contact will be added to your list

### Sending Messages
1. Select "Open Chat" from main menu
2. Choose a contact from your list
3. Select message option:
   - **Send Now**: Instant delivery with current timestamp
   - **Schedule**: Set future time (HH:MM format)
4. Type your message and send

### Creating Groups
1. Select "Create Group" from main menu
2. Enter unique group name
3. Add members by entering their usernames
4. Group is created with you as admin

### Group Messaging
1. Select "Open Group Chat" from main menu
2. Choose your group
3. Send messages to all members simultaneously

## 🔐 Security Features

- **Password Encryption**: XOR encryption with key `0xA5`
- **Masked Input**: Passwords displayed as asterisks during entry
- **Contact Encryption**: All contact names encrypted in storage
- **Message Encryption**: Chat messages encrypted at rest
- **Login Protection**: Account lockout after 3 failed attempts

## 📊 Technical Architecture

### Data Structures
- **Message Record**: 310 bytes (sender/timestamp/content)
- **Contact Record**: 51 bytes (encrypted username)
- **Group Record**: 51 bytes (encrypted group name)
- **Buffers**: Optimized for 100+ message storage

### Key Functions
- `SignUp/SignIn`: Authentication handlers
- `SendMessage/SendGroupMessage`: Message delivery
- `DisplayChatHistory`: Message rendering with scrolling
- `EncryptMessageData`: Security layer
- `BroadcastToGroupMembers`: Group message distribution

### File Operations
- Binary file I/O for data persistence
- Read-modify-write pattern for updates
- Automatic file creation on first use

## 🎯 Message Status System
- **[sent]**: Single tick - Message delivered to server
- **[delivered]**: Double tick - Message reached recipient
- **[read]**: Blue double tick - Message read by recipient
- **[NEW]**: Unread message indicator in contact list

## 🐛 Known Limitations

- Messages limited to 256 characters
- Username/password max 50 characters
- Group member limit: ~38 members
- No real-time synchronization (file-based storage)
- 32-bit Windows only

## 🔧 Customization

### Encryption Key
Change the encryption key in `.data` section:
```asm
encryptionKey BYTE 0A5h  ; Modify this value
```

### Message Display Limit
Adjust in `DisplayChatHistory` procedure:
```asm
cmp ebx, 10  ; Change to desired number
```

## 📝 Code Structure

```
main                    - Entry point and menu loop
├── Authentication
│   ├── SignUp          - User registration
│   └── SignIn          - User login
├── Contact Management
│   ├── ViewContacts    - Display contact list
│   └── AddNewContact   - Add new contacts
├── Messaging
│   ├── OpenChatInterface        - Direct chat
│   ├── SendMessage              - Send direct message
│   └── DisplayChatHistory       - Show message history
└── Group Features
    ├── CreateGroup              - New group creation
    ├── AddMemberToGroup         - Member management
    ├── OpenGroupChatInterface   - Group chat
    └── SendGroupMessage         - Broadcast to group
```

## 🤝 Contributing

This is an educational project demonstrating low-level systems programming. Feel free to:
- Add new features (file attachments, media support)
- Improve encryption (implement proper algorithms)
- Add network capabilities (socket programming)
- Enhance UI (better formatting, colors)

## 📄 License

Educational/Academic use. Based on Irvine32 library which has its own licensing terms.

## 👨‍💻 Author

Assembly Language Course Project - Complete messaging system implementation

---

**Note**: This is a console-based application demonstrating fundamental concepts in assembly language including file I/O, string manipulation, encryption, and data structures. It serves as an educational tool for understanding low-level programming concepts.
