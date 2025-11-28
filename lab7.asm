    TITLE WhatsApp Clone - Complete Messaging System with Group Chat

    INCLUDE Irvine32.inc
    INCLUDELIB Irvine32.lib

    .data
        ; ==================== MAIN TITLES ====================
        appTitle BYTE "===========================================", 0dh, 0ah
                 BYTE "     WHATSAPP CLONE - ASSEMBLY", 0dh, 0ah
                 BYTE "===========================================", 0dh, 0ah, 0
    
        welcomeMsg BYTE 0dh, 0ah, "Welcome to WhatsApp Clone!", 0dh, 0ah, 0
    
        ; ==================== AUTH MENUS ====================
        authMenu BYTE 0dh, 0ah, "----------- AUTHENTICATION -----------", 0dh, 0ah
                 BYTE "  1. Sign In", 0dh, 0ah
                 BYTE "  2. Sign Up", 0dh, 0ah
                 BYTE "  3. Exit", 0dh, 0ah
                 BYTE "--------------------------------------", 0dh, 0ah
                 BYTE "Enter your choice: ", 0
    
        ; ==================== SIGN UP/IN PROMPTS ====================
        signUpPrompt BYTE 0dh, 0ah, "========== SIGN UP ==========", 0dh, 0ah, 0
        signInPrompt BYTE 0dh, 0ah, "========== SIGN IN ==========", 0dh, 0ah, 0
    
        enterUsernameMsg BYTE "Enter username: ", 0
        enterPasswordMsg BYTE "Enter password: ", 0
    
        signUpSuccess BYTE 0dh, 0ah, "Account created successfully!", 0dh, 0ah, 0
        signInSuccess BYTE 0dh, 0ah, "Login successful! Welcome ", 0
    
        userExistsMsg BYTE 0dh, 0ah, "Username already exists! Try another.", 0dh, 0ah, 0
        invalidLoginMsg BYTE 0dh, 0ah, "Invalid username or password!", 0dh, 0ah, 0
        attemptsLeftMsg BYTE "Attempts left: ", 0
        accountLockedMsg BYTE 0dh, 0ah, "Account locked! Too many failed attempts.", 0dh, 0ah, 0
    
        ; ==================== MAIN MENU ====================
        mainMenu BYTE 0dh, 0ah, "----------- MAIN MENU -----------", 0dh, 0ah
                 BYTE "  1. View Contacts", 0dh, 0ah
                 BYTE "  2. Add New Contact", 0dh, 0ah
                 BYTE "  3. Open Chat", 0dh, 0ah
                 BYTE "  4. View Groups", 0dh, 0ah
                 BYTE "  5. Create Group", 0dh, 0ah
                 BYTE "  6. Add Member to Group", 0dh, 0ah
                 BYTE "  7. Open Group Chat", 0dh, 0ah
                 BYTE "  8. Logout", 0dh, 0ah
                 BYTE "---------------------------------", 0dh, 0ah
                 BYTE "Enter your choice: ", 0
    
        ; ==================== CONTACT MESSAGES ====================
        noContactsMsg BYTE 0dh, 0ah, "No contacts available!", 0dh, 0ah
                      BYTE "Press A to add or E to main menu: ", 0
    
        contactListHeader BYTE 0dh, 0ah, "========== YOUR CONTACTS ==========", 0dh, 0ah, 0
        contactListFooter BYTE "===================================", 0dh, 0ah, 0
    
        addContactPrompt BYTE 0dh, 0ah, "======= ADD NEW CONTACT =======", 0dh, 0ah, 0
        enterContactNameMsg BYTE "Enter contact username: ", 0
        contactAddedMsg BYTE 0dh, 0ah, "Contact added successfully!", 0dh, 0ah, 0
        contactNotFoundMsg BYTE 0dh, 0ah, "User not found! Cannot add contact.", 0dh, 0ah, 0
        contactExistsMsg BYTE 0dh, 0ah, "Contact already exists!", 0dh, 0ah, 0
    
        ; ==================== GROUP MESSAGES ====================
        noGroupsMsg BYTE 0dh, 0ah, "No groups available!", 0dh, 0ah
                    BYTE "Press C to create or E to main menu: ", 0
    
        groupListHeader BYTE 0dh, 0ah, "========== YOUR GROUPS ==========", 0dh, 0ah, 0
        groupListFooter BYTE "=================================", 0dh, 0ah, 0
    
        createGroupPrompt BYTE 0dh, 0ah, "======= CREATE NEW GROUP =======", 0dh, 0ah, 0
        enterGroupNameMsg BYTE "Enter group name: ", 0
        enterMemberNameMsg BYTE "Enter member username (or press Enter to skip): ", 0
        addMoreMembersMsg BYTE 0dh, 0ah, "Add more members? (Y/N): ", 0
    
        groupCreatedMsg BYTE 0dh, 0ah, "Group created successfully!", 0dh, 0ah, 0
        groupExistsMsg BYTE 0dh, 0ah, "Group name already exists!", 0dh, 0ah, 0
        memberAddedToGroupMsg BYTE 0dh, 0ah, "Member added to group successfully!", 0dh, 0ah, 0
        memberNotFoundMsg BYTE " - User not found!", 0dh, 0ah, 0
        memberAlreadyInGroupMsg BYTE " - Already in group!", 0dh, 0ah, 0
    
        addMemberPrompt BYTE 0dh, 0ah, "===== ADD MEMBER TO GROUP =====", 0dh, 0ah, 0
        selectGroupMsg BYTE 0dh, 0ah, "Select group number: ", 0
        groupMembersHeader BYTE 0dh, 0ah, "--- Group Members ---", 0dh, 0ah, 0
        noMembersMsg BYTE "No members yet.", 0dh, 0ah, 0
    
        ; ==================== CHAT MESSAGES ====================
        chatHeader BYTE 0dh, 0ah, "========== CHAT WITH ", 0
        groupChatHeader BYTE 0dh, 0ah, "========== GROUP: ", 0
        chatHeaderEnd BYTE " ==========", 0dh, 0ah, 0
        chatDivider BYTE "==========================================", 0dh, 0ah, 0
    
        chatMenu BYTE 0dh, 0ah, "1. Send Now  2. Schedule  3. Scroll  4. Back", 0dh, 0ah
                 BYTE "Choice: ", 0
    
        typeMessagePrompt BYTE 0dh, 0ah, "Type message: ", 0
        scheduleTimePrompt BYTE "Enter hours (0-23): ", 0
        scheduleMinPrompt BYTE "Enter minutes (0-59): ", 0
    
        messageSentMsg BYTE 0dh, 0ah, "Message sent!", 0dh, 0ah, 0
        messageScheduledMsg BYTE 0dh, 0ah, "Message scheduled!", 0dh, 0ah, 0
    
        selectContactMsg BYTE 0dh, 0ah, "Select contact number: ", 0
        noMoreMessagesMsg BYTE 0dh, 0ah, "No more messages to display.", 0dh, 0ah, 0
    
        ; ==================== MESSAGE DISPLAY ====================
        youPrefix BYTE "[You", 0
        scheduledPrefix BYTE "[Scheduled", 0
        timeStampSep BYTE "]: ", 0
        emptyChat BYTE "No messages yet. Start chatting!", 0dh, 0ah, 0
    
        ; ==================== MESSAGE STATUS ====================
        singleTick BYTE " [sent]", 0
        doubleTick BYTE " [delivered]", 0
        blueDoubleTick BYTE " [read]", 0
        unreadMsg BYTE " [NEW]", 0
        unreadCountMsg BYTE " unread messages", 0dh, 0ah, 0
    
        ; ==================== NOTIFICATION ====================
        newGroupNotification BYTE 0dh, 0ah, "[NOTIFICATION] You were added to group: ", 0
        newMessageNotification BYTE 0dh, 0ah, "You have ", 0
    
        ; ==================== ADMIN LABEL ====================
        adminLabel BYTE " [ADMIN]", 0
    
        ; ==================== FILE EXTENSIONS ====================
        userFileExt BYTE ".dat", 0
        contactsFileExt BYTE "_contacts.dat", 0
        chatFileExt BYTE "_chat.dat", 0
        groupsFileExt BYTE "_groups.dat", 0
        groupFilePrefix BYTE "group_", 0
        groupMembersExt BYTE "_members.dat", 0
        groupChatExt BYTE "_groupchat.dat", 0
        unreadFileExt BYTE "_unread.dat", 0
        statusFileExt BYTE "_status.dat", 0
        underscoreChar BYTE "_", 0
    
        ; ==================== ENCRYPTION ====================
        encryptionKey BYTE 0A5h
    
        ; ==================== BUFFERS ====================
        currentUser BYTE 51 DUP(0)
        username BYTE 51 DUP(0)
        password BYTE 51 DUP(0)
        tempPassword BYTE 51 DUP(0)
        contactName BYTE 51 DUP(0)
        groupName BYTE 51 DUP(0)
        messageBuffer BYTE 257 DUP(0)
        fileNameBuffer BYTE 151 DUP(0)
        fileNameBuffer2 BYTE 151 DUP(0)
        tempBuffer BYTE 2000 DUP(0)
        messageRecord BYTE 310 DUP(0)
        timeBuffer BYTE 12 DUP(0)
        contactRecord BYTE 51 DUP(0)
        groupRecord BYTE 51 DUP(0)
        memberBuffer BYTE 255 DUP(0)  ; INCREASED SIZE to prevent overflow
    
        ; Large buffer for storing existing messages (holds up to 100 messages)
        largeMessageBuffer BYTE 31000 DUP(0)
    
        ; ==================== VARIABLES ====================
        choice DWORD ?
        authChoice DWORD ?
        chatChoice DWORD ?
        contactCount DWORD 0
        groupCount DWORD 0
        memberCount DWORD 0
        selectedContact DWORD ?
        selectedGroup DWORD ?
        fileHandle DWORD ?
        loginAttempts DWORD 3
        messageType BYTE ?
        scheduleHour BYTE ?
        scheduleMin BYTE ?
        messageLength WORD ?
        messageOffset DWORD 0
        messagesDisplayed DWORD 0
        totalMessages DWORD 0
        bytesRead DWORD ?
        numMembers DWORD ?
        isGroupChat BYTE 0
        unreadCount DWORD 0
        messageStatus BYTE 0  ; 0=sent, 1=delivered, 2=read
    
        ; System time structure
        sysTime SYSTEMTIME <>

    .code
    main PROC
        call InitializeApp
    
    AuthLoop:
        call DisplayAuthMenu
        call ReadDec
        mov authChoice, eax
    
        cmp eax, 1
        jne CheckAuth2
        jmp HandleSignIn
    
    CheckAuth2:
        cmp eax, 2
        jne CheckAuth3
        jmp HandleSignUp
    
    CheckAuth3:
        cmp eax, 3
        jne AuthLoop
        jmp ExitApp

    HandleSignIn:
        call SignIn
        cmp eax, 1
        jne AuthLoop
        jmp MainMenuStart

    HandleSignUp:
        call SignUp
        jmp AuthLoop

    MainMenuStart:
        call ShowMainMenu
        jmp AuthLoop

    ExitApp:
        call ExitApplication
    
    main ENDP

    InitializeApp PROC
        call Clrscr
        mov edx, OFFSET appTitle
        call WriteString
        mov edx, OFFSET welcomeMsg
        call WriteString
        ret
    InitializeApp ENDP

    DisplayAuthMenu PROC
        call Crlf
        mov edx, OFFSET authMenu
        call WriteString
        ret
    DisplayAuthMenu ENDP

    SignUp PROC
        call Crlf
        mov edx, OFFSET signUpPrompt
        call WriteString
    
        mov edx, OFFSET enterUsernameMsg
        call WriteString
        mov edx, OFFSET username
        mov ecx, 50
        call ReadString
    
        cmp BYTE PTR [username], 0
        je SignUpDone
    
        call BuildUserFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne UserExists
    
        mov edx, OFFSET enterPasswordMsg
        call WriteString
        call ReadPasswordMasked
    
        call CreateUserFile
        call CreateContactsFile
        call CreateGroupsFile
    
        mov edx, OFFSET signUpSuccess
        call WriteString
        call WaitKey
        jmp SignUpDone
    
    UserExists:
        call CloseFile
        mov edx, OFFSET userExistsMsg
        call WriteString
        call WaitKey
    
    SignUpDone:
        ret
    SignUp ENDP

    SignIn PROC
        mov loginAttempts, 3
    
    SignInLoop:
        call Crlf
        mov edx, OFFSET signInPrompt
        call WriteString
    
        mov edx, OFFSET enterUsernameMsg
        call WriteString
        mov edx, OFFSET username
        mov ecx, 50
        call ReadString
    
        cmp BYTE PTR [username], 0
        jne ContinueSignIn
        jmp SignInFailed
    
    ContinueSignIn:
        call BuildUserFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne FileFound
        jmp InvalidUser
    
    FileFound:
        mov fileHandle, eax
    
        ; Clear tempPassword
        push edi
        push ecx
        push eax
        mov edi, OFFSET tempPassword
        mov ecx, 51
        xor al, al
    
    ClearTempPass:
        mov BYTE PTR [edi], al
        inc edi
        dec ecx
        cmp ecx, 0
        ja ClearTempPass
    
        pop eax
        pop ecx
        pop edi
    
        mov eax, fileHandle
        mov edx, OFFSET tempPassword
        mov ecx, 50
        call ReadFromFile
    
        mov eax, fileHandle
        call CloseFile
    
        mov edx, OFFSET enterPasswordMsg
        call WriteString
        call ReadPasswordMasked
    
        call ComparePasswords
        cmp eax, 1
        jne PasswordFailed
        jmp LoginSuccess
    
    PasswordFailed:
        dec loginAttempts
        mov edx, OFFSET invalidLoginMsg
        call WriteString
    
        mov eax, loginAttempts
        cmp eax, 0
        jne ShowAttempts
        jmp AccountLocked
    
    ShowAttempts:
        mov edx, OFFSET attemptsLeftMsg
        call WriteString
        mov eax, loginAttempts
        call WriteDec
        call Crlf
        call WaitKey
        jmp SignInLoop
    
    LoginSuccess:
        push esi
        push edi
        mov esi, OFFSET username
        mov edi, OFFSET currentUser
        mov ecx, 51
        rep movsb
        pop edi
        pop esi
    
        mov edx, OFFSET signInSuccess
        call WriteString
        mov edx, OFFSET currentUser
        call WriteString
        call Crlf
        call WaitKey
    
        mov eax, 1
        ret
    
    InvalidUser:
        mov edx, OFFSET invalidLoginMsg
        call WriteString
        dec loginAttempts
        call WaitKey
        cmp loginAttempts, 0
        jne SignInLoop
        jmp AccountLocked
    
    AccountLocked:
        mov edx, OFFSET accountLockedMsg
        call WriteString
        call WaitKey
    
    SignInFailed:
        xor eax, eax
        ret
    SignIn ENDP

    ShowMainMenu PROC
    MainLoop:
        call Clrscr
        mov edx, OFFSET appTitle
        call WriteString
    
        ; Show unread message count
        call ShowUnreadCount
    
        mov edx, OFFSET mainMenu
        call WriteString
        call ReadDec
        mov choice, eax
    
        cmp eax, 1
        jne CheckOpt2
        jmp HandleViewContacts
    
    CheckOpt2:
        cmp eax, 2
        jne CheckOpt3
        jmp HandleAddContact
    
    CheckOpt3:
        cmp eax, 3
        jne CheckOpt4
        jmp HandleOpenChat
    
    CheckOpt4:
        cmp eax, 4
        jne CheckOpt5
        jmp HandleViewGroups
    
    CheckOpt5:
        cmp eax, 5
        jne CheckOpt6
        jmp HandleCreateGroup
    
    CheckOpt6:
        cmp eax, 6
        jne CheckOpt7
        jmp HandleAddMemberToGroup
    
    CheckOpt7:
        cmp eax, 7
        jne CheckOpt8
        jmp HandleOpenGroupChat
    
    CheckOpt8:
        cmp eax, 8
        jne MainLoop
        jmp HandleLogout

    HandleViewContacts:
        call ViewContacts
        call WaitKey
        jmp MainLoop

    HandleAddContact:
        call AddNewContact
        call WaitKey
        jmp MainLoop

    HandleOpenChat:
        call OpenChatInterface
        jmp MainLoop

    HandleViewGroups:
        call ViewGroups
        call WaitKey
        jmp MainLoop

    HandleCreateGroup:
        call CreateGroup
        call WaitKey
        jmp MainLoop

    HandleAddMemberToGroup:
        call AddMemberToGroup
        call WaitKey
        jmp MainLoop

    HandleOpenGroupChat:
        call OpenGroupChatInterface
        jmp MainLoop

    HandleLogout:
        call Crlf
        ret
    ShowMainMenu ENDP

    ViewContacts PROC
        call Crlf
        call LoadContactsCount
    
        mov eax, contactCount
        cmp eax, 0
        jne HasContactsView
        jmp NoContacts
    
    HasContactsView:
        mov edx, OFFSET contactListHeader
        call WriteString
    
        call BuildContactsFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne FileOpenedView
        jmp NoContacts
    
    FileOpenedView:
        mov fileHandle, eax
    
        mov ebx, 1
    
    DispLoop:
        mov eax, fileHandle
        mov edx, OFFSET contactRecord
        mov ecx, 51
        call ReadFromFile
        cmp eax, 0
        jne DisplayContact
        jmp DoneDisp
    
    DisplayContact:
        call DecryptContactName
    
        mov al, ' '
        call WriteChar
        mov eax, ebx
        call WriteDec
        mov al, '.'
        call WriteChar
        mov al, ' '
        call WriteChar
        mov edx, OFFSET contactRecord
        call WriteString
    
        ; Check if there are unread messages from this contact
        call CheckUnreadFromContact
    
        call Crlf
    
        inc ebx
        jmp DispLoop
    
    DoneDisp:
        mov eax, fileHandle
        call CloseFile
        mov edx, OFFSET contactListFooter
        call WriteString
        ret
    
    NoContacts:
        mov edx, OFFSET noContactsMsg
        call WriteString
        call ReadChar
        cmp al, 'A'
        je DoAdd
        cmp al, 'a'
        jne NoAdd
    
    DoAdd:
        call AddNewContact
    
    NoAdd:
        ret
    ViewContacts ENDP

    AddNewContact PROC
        call Crlf
        mov edx, OFFSET addContactPrompt
        call WriteString
        mov edx, OFFSET enterContactNameMsg
        call WriteString
        mov edx, OFFSET contactName
        mov ecx, 50
        call ReadString
    
        cmp BYTE PTR [contactName], 0
        jne ContinueAdd
        jmp AddDone
    
    ContinueAdd:
        push esi
        push edi
        mov esi, OFFSET contactName
        mov edi, OFFSET username
        mov ecx, 51
        rep movsb
        pop edi
        pop esi
    
        call BuildUserFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne UserFoundAdd
        jmp UserNotFound
    
    UserFoundAdd:
        call CloseFile
    
        call CheckContactExists
        cmp eax, 1
        jne ContactNotExists
        jmp ContactAlreadyExists
    
    ContactNotExists:
        call EncryptContactName
        call SaveContact
    
        mov edx, OFFSET contactAddedMsg
        call WriteString
        jmp AddDone
    
    UserNotFound:
        mov edx, OFFSET contactNotFoundMsg
        call WriteString
        jmp AddDone
    
    ContactAlreadyExists:
        mov edx, OFFSET contactExistsMsg
        call WriteString
    
    AddDone:
        ret
    AddNewContact ENDP

    ViewGroups PROC
        call Crlf
        call LoadGroupsCount
    
        mov eax, groupCount
        cmp eax, 0
        jne HasGroupsView
        jmp NoGroups
    
    HasGroupsView:
        mov edx, OFFSET groupListHeader
        call WriteString
    
        call BuildGroupsFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne FileOpenedGroups
        jmp NoGroups
    
    FileOpenedGroups:
        mov fileHandle, eax
    
        mov ebx, 1
    
    DispGroupLoop:
        mov eax, fileHandle
        mov edx, OFFSET groupRecord
        mov ecx, 51
        call ReadFromFile
        cmp eax, 0
        jne DisplayGroup
        jmp DoneDispGroup
    
    DisplayGroup:
        call DecryptGroupName
    
        mov al, ' '
        call WriteChar
        mov eax, ebx
        call WriteDec
        mov al, '.'
        call WriteChar
        mov al, ' '
        call WriteChar
        mov edx, OFFSET groupRecord
        call WriteString
        call Crlf
    
        inc ebx
        jmp DispGroupLoop
    
    DoneDispGroup:
        mov eax, fileHandle
        call CloseFile
        mov edx, OFFSET groupListFooter
        call WriteString
        ret
    
    NoGroups:
        mov edx, OFFSET noGroupsMsg
        call WriteString
        call ReadChar
        cmp al, 'C'
        je DoCreate
        cmp al, 'c'
        jne NoCreate
    
    DoCreate:
        call CreateGroup
    
    NoCreate:
        ret
    ViewGroups ENDP

    CreateGroup PROC
        call Crlf
        mov edx, OFFSET createGroupPrompt
        call WriteString
    
        ; Get group name
        mov edx, OFFSET enterGroupNameMsg
        call WriteString
        mov edx, OFFSET groupName
        mov ecx, 50
        call ReadString
    
        cmp BYTE PTR [groupName], 0
        jne ContinueCreate
        ret
    
    ContinueCreate:
        ; Check if group already exists
        call CheckGroupExists
        cmp eax, 1
        jne GroupNotExists
    
        mov edx, OFFSET groupExistsMsg
        call WriteString
        ret
    
    GroupNotExists:
        ; Save the group
        call EncryptGroupName
        call SaveGroup
        call CreateGroupMembersFile
    
        ; *** FIX: ADD CREATOR AS FIRST MEMBER ***
        ; Copy currentUser to username (to add as member)
        push esi
        push edi
        mov esi, OFFSET currentUser
        mov edi, OFFSET username
        mov ecx, 51
        rep movsb
        pop edi
        pop esi
    
        ; Encrypt and save creator as first member
        call EncryptMemberName
        call SaveGroupMember
    
        ; Add this group to creator's group list
        call AddGroupToMember
    
        mov edx, OFFSET groupCreatedMsg
        call WriteString
    
        ; Now ask if they want to add MORE members
    AddMemberLoop:
        call Crlf
        mov edx, OFFSET enterMemberNameMsg
        call WriteString
        mov edx, OFFSET username
        mov ecx, 50
        call ReadString
    
        cmp BYTE PTR [username], 0
        jne ProcessMember
        jmp AskForMore
    
    ProcessMember:
        ; Check if it's the creator (avoid duplicate)
        push esi
        push edi
        mov esi, OFFSET username
        mov edi, OFFSET currentUser
    
    CompareCreator:
        mov al, BYTE PTR [esi]
        mov bl, BYTE PTR [edi]
        cmp al, bl
        jne NotCreator
        cmp al, 0
        je IsCreator
        inc esi
        inc edi
        jmp CompareCreator
    
    IsCreator:
        pop edi
        pop esi
        mov edx, OFFSET username
        call WriteString
        mov edx, OFFSET memberAlreadyInGroupMsg
        call WriteString
        jmp AskForMore
    
    NotCreator:
        pop edi
        pop esi
    
        ; Check if user exists
        call BuildUserFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne MemberFoundCreate
    
        mov edx, OFFSET username
        call WriteString
        mov edx, OFFSET memberNotFoundMsg
        call WriteString
        jmp AskForMore
    
    MemberFoundCreate:
        call CloseFile
    
        ; Check if already in group
        call CheckMemberInGroup
        cmp eax, 1
        jne AddThisMember
    
        mov edx, OFFSET username
        call WriteString
        mov edx, OFFSET memberAlreadyInGroupMsg
        call WriteString
        jmp AskForMore
    
    AddThisMember:
        ; Save member
        call EncryptMemberName
        call SaveGroupMember
    
        ; Auto-add this group to the member's group list
        call AddGroupToMember
    
        mov edx, OFFSET memberAddedToGroupMsg
        call WriteString
    
    AskForMore:
        mov edx, OFFSET addMoreMembersMsg
        call WriteString
        call ReadChar
        call Crlf
    
        cmp al, 'Y'
        je AddMemberLoop
        cmp al, 'y'
        je AddMemberLoop
    
        ret
    CreateGroup ENDP

    AddMemberToGroup PROC
        call Crlf
    
        ; Show groups
        call ViewGroups
        call LoadGroupsCount
    
        mov eax, groupCount
        cmp eax, 0
        je NoGroupsToAdd
    
        ; Select group
        call Crlf
        mov edx, OFFSET selectGroupMsg
        call WriteString
        call ReadDec
        mov selectedGroup, eax
    
        cmp eax, 0
        je NoGroupsToAdd
    
        mov eax, selectedGroup
        cmp eax, groupCount
        ja NoGroupsToAdd
    
        call LoadSelectedGroup
    
        ; Show current members (FIXED)
        call DisplayGroupMembers
    
    AddAnotherMember:
        ; Add new member
        call Crlf
        mov edx, OFFSET enterMemberNameMsg
        call WriteString
        mov edx, OFFSET username
        mov ecx, 50
        call ReadString
    
        cmp BYTE PTR [username], 0
        je NoGroupsToAdd
    
        ; Check if user exists
        call BuildUserFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne UserExistsForGroup
    
        mov edx, OFFSET username
        call WriteString
        mov edx, OFFSET memberNotFoundMsg
        call WriteString
        jmp AskAddMore
    
    UserExistsForGroup:
        call CloseFile
    
        ; Check if already in group
        call CheckMemberInGroup
        cmp eax, 1
        jne CanAddMember
    
        mov edx, OFFSET username
        call WriteString
        mov edx, OFFSET memberAlreadyInGroupMsg
        call WriteString
        jmp AskAddMore
    
    CanAddMember:
        ; Save member
        call EncryptMemberName
        call SaveGroupMember
    
        ; Auto-add this group to the member's group list
        call AddGroupToMember
    
        mov edx, OFFSET memberAddedToGroupMsg
        call WriteString
    
    AskAddMore:
        mov edx, OFFSET addMoreMembersMsg
        call WriteString
        call ReadChar
        call Crlf
    
        cmp al, 'Y'
        je AddAnotherMember
        cmp al, 'y'
        je AddAnotherMember
    
    NoGroupsToAdd:
        ret
    AddMemberToGroup ENDP

    CheckMemberInGroup PROC
        push ebx
        push ecx
        push edx
        push esi
        push edi
    
        call BuildGroupMembersFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne FileOpenedCheckMember
    
        ; File doesn't exist, member not in group
        xor eax, eax
        jmp CheckMemberDone
    
    FileOpenedCheckMember:
        mov fileHandle, eax
    
    CheckMemberLoop:
        mov eax, fileHandle
        mov edx, OFFSET tempBuffer
        mov ecx, 51
        call ReadFromFile
        cmp eax, 0
        jne DecryptAndCompareMember
    
        ; End of file, not found
        mov eax, fileHandle
        call CloseFile
        xor eax, eax
        jmp CheckMemberDone
    
    DecryptAndCompareMember:
        ; Decrypt tempBuffer
        mov esi, OFFSET tempBuffer
        push eax
        mov al, encryptionKey
    
    DecryptTempMember:
        cmp BYTE PTR [esi], 0
        je DecryptTempMemberDone
        xor BYTE PTR [esi], al
        inc esi
        jmp DecryptTempMember
    
    DecryptTempMemberDone:
        pop eax
    
        ; Compare with username byte by byte
        mov esi, OFFSET username
        mov edi, OFFSET tempBuffer
    
    CompareMemberLoop:
        mov al, BYTE PTR [esi]
        mov bl, BYTE PTR [edi]
        cmp al, bl
        jne MemberNotSame
        cmp al, 0
        je MemberFound
        inc esi
        inc edi
        jmp CompareMemberLoop
    
    MemberNotSame:
        jmp CheckMemberLoop
    
    MemberFound:
        mov eax, fileHandle
        call CloseFile
        mov eax, 1
        jmp CheckMemberDone
    
    CheckMemberDone:
        pop edi
        pop esi
        pop edx
        pop ecx
        pop ebx
        ret
    CheckMemberInGroup ENDP

    OpenChatInterface PROC
        mov isGroupChat, 0
    
        call ViewContacts
        call LoadContactsCount
    
        mov eax, contactCount
        cmp eax, 0
        jne HasContacts
        jmp ExitChat
    
    HasContacts:
        call Crlf
        mov edx, OFFSET selectContactMsg
        call WriteString
        call ReadDec
        mov selectedContact, eax
    
        cmp eax, 0
        jne CheckRange
        jmp ExitChat
    
    CheckRange:
        mov eax, selectedContact
        cmp eax, contactCount
        jbe ValidContact
        jmp ExitChat
    
    ValidContact:
        call LoadSelectedContact
    
        ; Mark messages as read when opening chat
        call MarkAsRead
    
        call DisplayChatInterface
    
        mov messageOffset, 0
        mov messagesDisplayed, 0
    
    ChatLoop:
        mov edx, OFFSET chatMenu
        call WriteString
        call ReadDec
        mov chatChoice, eax
    
        cmp eax, 1
        jne CheckChat2
        jmp SendNow
    
    CheckChat2:
        cmp eax, 2
        jne CheckChat3
        jmp SendScheduled
    
    CheckChat3:
        cmp eax, 3
        jne CheckChat4
        jmp ScrollMore
    
    CheckChat4:
        cmp eax, 4
        jne ChatLoop
        jmp ExitChat
    
    SendNow:
        mov messageType, 0
        call GetCurrentTime   
        call ComposeMessage
        call SendMessage
        call RefreshChat
        jmp ChatLoop
    
    SendScheduled:
        mov messageType, 1
        call GetScheduleTime
        call ComposeMessage
        call SendMessage
        call RefreshChat
        jmp ChatLoop
    
    ScrollMore:
        call DisplayMoreMessages
        jmp ChatLoop
    
    ExitChat:
        ret
    OpenChatInterface ENDP

    OpenGroupChatInterface PROC
        mov isGroupChat, 1
    
        call ViewGroups
        call LoadGroupsCount
    
        mov eax, groupCount
        cmp eax, 0
        jne HasGroups
        jmp ExitGroupChat
    
    HasGroups:
        call Crlf
        mov edx, OFFSET selectGroupMsg
        call WriteString
        call ReadDec
        mov selectedGroup, eax
    
        cmp eax, 0
        jne CheckGroupRange
        jmp ExitGroupChat
    
    CheckGroupRange:
        mov eax, selectedGroup
        cmp eax, groupCount
        jbe ValidGroup
        jmp ExitGroupChat
    
    ValidGroup:
        call LoadSelectedGroup
        call DisplayGroupChatInterface
    
        mov messageOffset, 0
        mov messagesDisplayed, 0
    
    GroupChatLoop:
        mov edx, OFFSET chatMenu
        call WriteString
        call ReadDec
        mov chatChoice, eax
    
        cmp eax, 1
        jne CheckGroupChat2
        jmp SendNowGroup
    
    CheckGroupChat2:
        cmp eax, 2
        jne CheckGroupChat3
        jmp SendScheduledGroup
    
    CheckGroupChat3:
        cmp eax, 3
        jne CheckGroupChat4
        jmp ScrollMoreGroup
    
    CheckGroupChat4:
        cmp eax, 4
        jne GroupChatLoop
        jmp ExitGroupChat
    
    SendNowGroup:
        mov messageType, 0
        call GetCurrentTime   
        call ComposeMessage
        call SendGroupMessage
        call RefreshGroupChat
        jmp GroupChatLoop
    
    SendScheduledGroup:
        mov messageType, 1
        call GetScheduleTime
        call ComposeMessage
        call SendGroupMessage
        call RefreshGroupChat
        jmp GroupChatLoop
    
    ScrollMoreGroup:
        call DisplayMoreGroupMessages
        jmp GroupChatLoop
    
    ExitGroupChat:
        ret
    OpenGroupChatInterface ENDP

    DisplayChatInterface PROC
        call Clrscr
        mov edx, OFFSET chatHeader
        call WriteString
        mov edx, OFFSET contactName
        call WriteString
        mov edx, OFFSET chatHeaderEnd
        call WriteString
    
        call DisplayChatHistory
    
        mov edx, OFFSET chatDivider
        call WriteString
        ret
    DisplayChatInterface ENDP

    DisplayGroupChatInterface PROC
        call Clrscr
        mov edx, OFFSET groupChatHeader
        call WriteString
        mov edx, OFFSET groupName
        call WriteString
        mov edx, OFFSET chatHeaderEnd
        call WriteString
    
        call DisplayGroupMembers
    
        call DisplayGroupChatHistory
    
        mov edx, OFFSET chatDivider
        call WriteString
        ret
    DisplayGroupChatInterface ENDP

    DisplayGroupMembers PROC
        mov edx, OFFSET groupMembersHeader
        call WriteString
    
        call BuildGroupMembersFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne MembersFileOpened
    
        mov edx, OFFSET noMembersMsg
        call WriteString
        ret
    
    MembersFileOpened:
        mov fileHandle, eax
        mov ebx, 0
    
    MemberLoop:
        ; *** FIX: CLEAR memberBuffer before reading ***
        push edi
        push ecx
        push eax
        mov edi, OFFSET memberBuffer
        mov ecx, 255
        xor al, al
    ClearMemberBuf:
        mov BYTE PTR [edi], al
        inc edi
        loop ClearMemberBuf
        pop eax
        pop ecx
        pop edi
    
        mov eax, fileHandle
        mov edx, OFFSET memberBuffer
        mov ecx, 51
        call ReadFromFile
        cmp eax, 0
        jne ShowMember
        jmp DoneMembers
    
    ShowMember:
        call DecryptMemberName
    
        mov al, ' '
        call WriteChar
        mov al, '-'
        call WriteChar
        mov al, ' '
        call WriteChar
        mov edx, OFFSET memberBuffer
        call WriteString
    
        ; *** FIX: Show if this member is the creator (admin) ***
        ; Compare memberBuffer with groupName's creator
        ; For now, show [ADMIN] for first member
        cmp ebx, 0
        jne NotAdmin
        mov edx, OFFSET adminLabel
        call WriteString
    
    NotAdmin:
        call Crlf
    
        inc ebx
        jmp MemberLoop
    
    DoneMembers:
        mov eax, fileHandle
        call CloseFile
    
        cmp ebx, 0
        jne HasMembers
        mov edx, OFFSET noMembersMsg
        call WriteString
    
    HasMembers:
        call Crlf
        ret
    DisplayGroupMembers ENDP

    DisplayChatHistory PROC
        call BuildChatFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne FileOpenedChat
        jmp NoMsg
    
    FileOpenedChat:
        mov fileHandle, eax
    
        mov totalMessages, 0
    CountLoop:
        mov eax, fileHandle
        mov edx, OFFSET messageRecord
        mov ecx, 310
        call ReadFromFile
        cmp eax, 0
        jne IncrementCount
        jmp DoneCounting
    
    IncrementCount:
        inc totalMessages
        jmp CountLoop
    
    DoneCounting:
        mov eax, fileHandle
        call CloseFile
    
        mov eax, totalMessages
        cmp eax, 0
        jne HasMessages
        jmp NoMsg
    
    HasMessages:
        mov ebx, totalMessages
        cmp ebx, 10
        jbe ShowAllMessages
        sub ebx, 10
        jmp SkipToStart
    
    ShowAllMessages:
        xor ebx, ebx
    
    SkipToStart:
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne FileReopened
        jmp NoMsg
    
    FileReopened:
        mov fileHandle, eax
    
        mov ecx, ebx
        cmp ecx, 0
        jne DoSkip
        jmp StartReading
    
    DoSkip:
    SkipLoop:
        push ecx
        mov eax, fileHandle
        mov edx, OFFSET messageRecord
        mov ecx, 310
        call ReadFromFile
        pop ecx
        cmp eax, 0
        jne ContinueSkip
        jmp EndMsg
    
    ContinueSkip:
        loop SkipLoop
    
    StartReading:
        mov messagesDisplayed, 0
    
    ReadLoop:
        mov eax, fileHandle
        mov edx, OFFSET messageRecord
        mov ecx, 310
        call ReadFromFile
        cmp eax, 0
        jne DisplayMsg
        jmp EndMsg
    
    DisplayMsg:
        call DecryptAndDisplay
        inc messagesDisplayed
    
        ; Check if we've displayed 10 messages
        mov eax, messagesDisplayed
        cmp eax, 10
        jae EndMsg
    
        jmp ReadLoop
    
    EndMsg:
        mov eax, fileHandle
        call CloseFile
        ret
    
    NoMsg:
        mov edx, OFFSET emptyChat
        call WriteString
        mov messagesDisplayed, 0
        ret
    DisplayChatHistory ENDP

    DisplayGroupChatHistory PROC
        call BuildGroupChatFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne FileOpenedGroupChat
        jmp NoMsgGroup
    
    FileOpenedGroupChat:
        mov fileHandle, eax
    
        mov totalMessages, 0
    CountLoopGroup:
        mov eax, fileHandle
        mov edx, OFFSET messageRecord
        mov ecx, 310
        call ReadFromFile
        cmp eax, 0
        jne IncrementCountGroup
        jmp DoneCountingGroup
    
    IncrementCountGroup:
        inc totalMessages
        jmp CountLoopGroup
    
    DoneCountingGroup:
        mov eax, fileHandle
        call CloseFile
    
        mov eax, totalMessages
        cmp eax, 0
        jne HasMessagesGroup
        jmp NoMsgGroup
    
    HasMessagesGroup:
        mov ebx, totalMessages
        cmp ebx, 10
        jbe ShowAllMessagesGroup
        sub ebx, 10
        jmp SkipToStartGroup
    
    ShowAllMessagesGroup:
        xor ebx, ebx
    
    SkipToStartGroup:
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne FileReopenedGroup
        jmp NoMsgGroup
    
    FileReopenedGroup:
        mov fileHandle, eax
    
        mov ecx, ebx
        cmp ecx, 0
        jne DoSkipGroup
        jmp StartReadingGroup
    
    DoSkipGroup:
    SkipLoopGroup:
        push ecx
        mov eax, fileHandle
        mov edx, OFFSET messageRecord
        mov ecx, 310
        call ReadFromFile
        pop ecx
        cmp eax, 0
        jne ContinueSkipGroup
        jmp EndMsgGroup
    
    ContinueSkipGroup:
        loop SkipLoopGroup
    
    StartReadingGroup:
        mov messagesDisplayed, 0
    
    ReadLoopGroup:
        mov eax, fileHandle
        mov edx, OFFSET messageRecord
        mov ecx, 310
        call ReadFromFile
        cmp eax, 0
        jne DisplayMsgGroup
        jmp EndMsgGroup
    
    DisplayMsgGroup:
        call DecryptAndDisplay
        inc messagesDisplayed
    
        ; Check if we've displayed 10 messages
        mov eax, messagesDisplayed
        cmp eax, 10
        jae EndMsgGroup
    
        jmp ReadLoopGroup
    
    EndMsgGroup:
        mov eax, fileHandle
        call CloseFile
        ret
    
    NoMsgGroup:
        mov edx, OFFSET emptyChat
        call WriteString
        mov messagesDisplayed, 0
        ret
    DisplayGroupChatHistory ENDP

    DisplayMoreMessages PROC
        call BuildChatFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne FileOpenedMore
        jmp NoMoreMsg
    
    FileOpenedMore:
        mov fileHandle, eax
    
        mov ecx, messagesDisplayed
        cmp ecx, 0
        jne DoSkipMore
        jmp StartReading
    
    DoSkipMore:
    SkipLoop:
        push ecx
        mov eax, fileHandle
        mov edx, OFFSET messageRecord
        mov ecx, 310
        call ReadFromFile
        pop ecx
        cmp eax, 0
        jne ContinueSkipMore
        jmp NoMoreMsg
    
    ContinueSkipMore:
        loop SkipLoop
    
    StartReading:
        mov ebx, 0
    
    ReadMoreLoop:
        cmp ebx, 3
        jae DoneReading
    
        mov eax, fileHandle
        mov edx, OFFSET messageRecord
        mov ecx, 310
        call ReadFromFile
        cmp eax, 0
        jne DisplayMoreMsg
        jmp NoMoreMsg
    
    DisplayMoreMsg:
        call DecryptAndDisplay
        inc ebx
        inc messagesDisplayed
        jmp ReadMoreLoop
    
    DoneReading:
        mov eax, fileHandle
        call CloseFile
        ret
    
    NoMoreMsg:
        mov eax, fileHandle
        call CloseFile
        mov edx, OFFSET noMoreMessagesMsg
        call WriteString
        ret
    DisplayMoreMessages ENDP

    DisplayMoreGroupMessages PROC
        call BuildGroupChatFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne FileOpenedMoreGroup
        jmp NoMoreMsgGroup
    
    FileOpenedMoreGroup:
        mov fileHandle, eax
    
        mov ecx, messagesDisplayed
        cmp ecx, 0
        jne DoSkipMoreGroup
        jmp StartReadingMore
    
    DoSkipMoreGroup:
    SkipLoopMore:
        push ecx
        mov eax, fileHandle
        mov edx, OFFSET messageRecord
        mov ecx, 310
        call ReadFromFile
        pop ecx
        cmp eax, 0
        jne ContinueSkipMoreGroup
        jmp NoMoreMsgGroup
    
    ContinueSkipMoreGroup:
        loop SkipLoopMore
    
    StartReadingMore:
        mov ebx, 0
    
    ReadMoreLoopGroup:
        cmp ebx, 3
        jae DoneReadingMore
    
        mov eax, fileHandle
        mov edx, OFFSET messageRecord
        mov ecx, 310
        call ReadFromFile
        cmp eax, 0
        jne DisplayMoreMsgGroup
        jmp NoMoreMsgGroup
    
    DisplayMoreMsgGroup:
        call DecryptAndDisplay
        inc ebx
        inc messagesDisplayed
        jmp ReadMoreLoopGroup
    
    DoneReadingMore:
        mov eax, fileHandle
        call CloseFile
        ret
    
    NoMoreMsgGroup:
        mov eax, fileHandle
        call CloseFile
        mov edx, OFFSET noMoreMessagesMsg
        call WriteString
        ret
    DisplayMoreGroupMessages ENDP

    ComposeMessage PROC
        push eax
        push ecx
        push edx
        push edi
    
        mov edi, OFFSET messageBuffer
        mov ecx, 257
        xor al, al
    
    ClearMsgBuffer:
        mov BYTE PTR [edi], al
        inc edi
        dec ecx
        cmp ecx, 0
        ja ClearMsgBuffer
    
        call Crlf
        mov edx, OFFSET typeMessagePrompt
        call WriteString
        mov edx, OFFSET messageBuffer
        mov ecx, 256
        call ReadString
    
        pop edi
        pop edx
        pop ecx
        pop eax
        ret
    ComposeMessage ENDP

    GetScheduleTime PROC
        call Crlf
        mov edx, OFFSET scheduleTimePrompt
        call WriteString
        call ReadDec
        mov scheduleHour, al
        mov edx, OFFSET scheduleMinPrompt
        call WriteString
        call ReadDec
        mov scheduleMin, al
        ret
    GetScheduleTime ENDP

    GetCurrentTime PROC
        push eax
        push esi
    
        INVOKE GetLocalTime, ADDR sysTime
    
        movzx eax, sysTime.wHour
        mov scheduleHour, al
    
        movzx eax, sysTime.wMinute
        mov scheduleMin, al
    
        pop esi
        pop eax
        ret
    GetCurrentTime ENDP

    SendMessage PROC
        call BuildMessageRecordSender
        call EncryptMessageData
        call SaveMessageToSenderFile
    
        call BuildMessageRecordReceiver
        call EncryptMessageData
        call SaveMessageToReceiverFile
    
        mov al, messageType
        cmp al, 0
        je SentNow
        mov edx, OFFSET messageScheduledMsg
        jmp ShowMsg
    
    SentNow:
        mov edx, OFFSET messageSentMsg
    
    ShowMsg:
        call WriteString
        mov messagesDisplayed, 0
        ret
    SendMessage ENDP

    SendGroupMessage PROC
        call BuildGroupMessageRecord
        call EncryptMessageData
        call SaveMessageToGroupFile
    
        call BroadcastToGroupMembers
    
        mov al, messageType
        cmp al, 0
        je SentNowGroup
        mov edx, OFFSET messageScheduledMsg
        jmp ShowMsgGroup
    
    SentNowGroup:
        mov edx, OFFSET messageSentMsg
    
    ShowMsgGroup:
        call WriteString
        mov messagesDisplayed, 0
        ret
    SendGroupMessage ENDP

    BroadcastToGroupMembers PROC
        push eax
        push ebx
        push ecx
        push edx
    
        call BuildGroupMembersFileName
        mov edx, OFFSET fileNameBuffer2
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne MembersFileOpenedBroadcast
        jmp NoBroadcast
    
    MembersFileOpenedBroadcast:
        mov fileHandle, eax
    
    BroadcastLoop:
        mov eax, fileHandle
        mov edx, OFFSET memberBuffer
        mov ecx, 51
        call ReadFromFile
        cmp eax, 0
        jne ProcessMember
        jmp DoneBroadcast
    
    ProcessMember:
        call DecryptMemberName
    
        push esi
        push edi
        mov esi, OFFSET memberBuffer
        mov edi, OFFSET contactName
        mov ecx, 51
        rep movsb
        pop edi
        pop esi
    
        call BuildMessageRecordReceiver
        call EncryptMessageData
        call SaveMessageToReceiverFile
    
        jmp BroadcastLoop
    
    DoneBroadcast:
        mov eax, fileHandle
        call CloseFile
    
    NoBroadcast:
        pop edx
        pop ecx
        pop ebx
        pop eax
        ret
    BroadcastToGroupMembers ENDP

    BuildMessageRecordSender PROC
        push esi
        push edi
        push eax
        push ecx
    
        ; Clear messageRecord
        mov edi, OFFSET messageRecord
        mov ecx, 310
        xor al, al
    
    ClearMsgLoop:
        mov BYTE PTR [edi], al
        inc edi
        dec ecx
        cmp ecx, 0
        ja ClearMsgLoop
    
        mov edi, OFFSET messageRecord
        mov esi, OFFSET youPrefix
    
    CopyYou:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je YouDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyYou
    
    YouDone:
        mov BYTE PTR [edi], ' '
        inc edi
    
        mov BYTE PTR [edi], '['
        inc edi
    
        call AddTimeToRecord
    
        mov BYTE PTR [edi], ']'
        inc edi
        mov BYTE PTR [edi], ':'
        inc edi
        mov BYTE PTR [edi], ' '
        inc edi
    
        mov esi, OFFSET messageBuffer
    CopyMsg:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je MsgDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyMsg
    
    MsgDone:
        mov BYTE PTR [edi], 0
    
        pop ecx
        pop eax
        pop edi
        pop esi
        ret
    BuildMessageRecordSender ENDP

    BuildMessageRecordReceiver PROC
        push esi
        push edi
        push eax
        push ecx
    
        ; Clear messageRecord
        mov edi, OFFSET messageRecord
        mov ecx, 310
        xor al, al
    
    ClearMsgLoop2:
        mov BYTE PTR [edi], al
        inc edi
        dec ecx
        cmp ecx, 0
        ja ClearMsgLoop2
    
        mov edi, OFFSET messageRecord
        mov esi, OFFSET currentUser
    
    CopyName:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je NameDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyName
    
    NameDone:
        mov BYTE PTR [edi], ' '
        inc edi
    
        mov BYTE PTR [edi], '['
        inc edi
    
        call AddTimeToRecord
    
        mov BYTE PTR [edi], ']'
        inc edi
        mov BYTE PTR [edi], ':'
        inc edi
        mov BYTE PTR [edi], ' '
        inc edi
    
        mov esi, OFFSET messageBuffer
    CopyMsg2:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je MsgDone2
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyMsg2
    
    MsgDone2:
        mov BYTE PTR [edi], 0
    
        pop ecx
        pop eax
        pop edi
        pop esi
        ret
    BuildMessageRecordReceiver ENDP

    BuildGroupMessageRecord PROC
        push esi
        push edi
        push eax
        push ecx
    
        ; Clear messageRecord
        mov edi, OFFSET messageRecord
        mov ecx, 310
        xor al, al
    
    ClearMsgLoop3:
        mov BYTE PTR [edi], al
        inc edi
        dec ecx
        cmp ecx, 0
        ja ClearMsgLoop3
    
        mov edi, OFFSET messageRecord
        mov esi, OFFSET currentUser
    
    CopyUserGroup:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je UserDoneGroup
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyUserGroup
    
    UserDoneGroup:
        mov BYTE PTR [edi], ' '
        inc edi
    
        mov BYTE PTR [edi], '['
        inc edi
    
        call AddTimeToRecord
    
        mov BYTE PTR [edi], ']'
        inc edi
        mov BYTE PTR [edi], ':'
        inc edi
        mov BYTE PTR [edi], ' '
        inc edi
    
        mov esi, OFFSET messageBuffer
    CopyMsgGroup:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je MsgDoneGroup
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyMsgGroup
    
    MsgDoneGroup:
        mov BYTE PTR [edi], 0
    
        pop ecx
        pop eax
        pop edi
        pop esi
        ret
    BuildGroupMessageRecord ENDP

    AddTimeToRecord PROC
        push eax
        push edx
        push ebx
    
        movzx eax, scheduleHour
        xor edx, edx
        mov ecx, 10
        div ecx
        add al, '0'
        mov BYTE PTR [edi], al
        inc edi
        mov eax, edx
        add al, '0'
        mov BYTE PTR [edi], al
        inc edi
    
        mov al, ':'
        mov BYTE PTR [edi], al
        inc edi
    
        movzx eax, scheduleMin
        xor edx, edx
        mov ecx, 10
        div ecx
        add al, '0'
        mov BYTE PTR [edi], al
        inc edi
        mov eax, edx
        add al, '0'
        mov BYTE PTR [edi], al
        inc edi
    
        pop ebx
        pop edx
        pop eax
        ret
    AddTimeToRecord ENDP

    EncryptMessageData PROC
        push esi
        mov esi, OFFSET messageRecord
        mov al, encryptionKey
    
    EncLoop:
        cmp BYTE PTR [esi], 0
        je EncDone
        xor BYTE PTR [esi], al
        inc esi
        jmp EncLoop
    
    EncDone:
        pop esi
        ret
    EncryptMessageData ENDP

    SaveMessageToSenderFile PROC
        push eax
        push ebx
        push ecx
        push edx
        push esi
        push edi
    
        call BuildChatFileName
    
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne FileExistsSender
        jmp CreateNewFileSender
    
    FileExistsSender:
        mov fileHandle, eax
        xor ebx, ebx
    
    ReadExistingLoopSender:
        mov eax, fileHandle
        mov edx, OFFSET largeMessageBuffer
        add edx, ebx
        mov ecx, 310
        call ReadFromFile
    
        cmp eax, 0
        jne ContinueReadSender
        jmp DoneReadingSender
    
    ContinueReadSender:
        add ebx, 310
        jmp ReadExistingLoopSender
    
    DoneReadingSender:
        mov eax, fileHandle
        call CloseFile
    
        mov edx, OFFSET fileNameBuffer
        call CreateOutputFile
        mov fileHandle, eax
    
        cmp ebx, 0
        jne WriteExistingSender
        jmp WriteNewMessageSender
    
    WriteExistingSender:
        mov eax, fileHandle
        mov edx, OFFSET largeMessageBuffer
        mov ecx, ebx
        call WriteToFile
    
    WriteNewMessageSender:
        mov eax, fileHandle
        mov edx, OFFSET messageRecord
        mov ecx, 310
        call WriteToFile
    
        mov eax, fileHandle
        call CloseFile
        jmp SaveDoneSender
    
    CreateNewFileSender:
        mov edx, OFFSET fileNameBuffer
        call CreateOutputFile
        mov fileHandle, eax
    
        mov eax, fileHandle
        mov edx, OFFSET messageRecord
        mov ecx, 310
        call WriteToFile
    
        mov eax, fileHandle
        call CloseFile
    
    SaveDoneSender:
        pop edi
        pop esi
        pop edx
        pop ecx
        pop ebx
        pop eax
        ret
    SaveMessageToSenderFile ENDP

    SaveMessageToReceiverFile PROC
        push eax
        push ebx
        push ecx
        push edx
        push esi
        push edi
    
        ; Auto-add sender to receiver's contacts if not exists
        call AutoAddContact
    
        call BuildReceiverChatFileName
    
        mov edx, OFFSET fileNameBuffer2
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne FileExistsReceiver
        jmp CreateNewFileReceiver
    
    FileExistsReceiver:
        mov fileHandle, eax
        xor ebx, ebx
    
    ReadExistingLoopReceiver:
        mov eax, fileHandle
        mov edx, OFFSET largeMessageBuffer
        add edx, ebx
        mov ecx, 310
        call ReadFromFile
    
        cmp eax, 0
        jne ContinueReadReceiver
        jmp DoneReadingReceiver
    
    ContinueReadReceiver:
        add ebx, 310
        jmp ReadExistingLoopReceiver
    
    DoneReadingReceiver:
        mov eax, fileHandle
        call CloseFile
    
        mov edx, OFFSET fileNameBuffer2
        call CreateOutputFile
        mov fileHandle, eax
    
        cmp ebx, 0
        jne WriteExistingReceiver
        jmp WriteNewMessageReceiver
    
    WriteExistingReceiver:
        mov eax, fileHandle
        mov edx, OFFSET largeMessageBuffer
        mov ecx, ebx
        call WriteToFile
    
    WriteNewMessageReceiver:
        mov eax, fileHandle
        mov edx, OFFSET messageRecord
        mov ecx, 310
        call WriteToFile
    
        mov eax, fileHandle
        call CloseFile
        jmp SaveDoneReceiver
    
    CreateNewFileReceiver:
        mov edx, OFFSET fileNameBuffer2
        call CreateOutputFile
        mov fileHandle, eax
    
        mov eax, fileHandle
        mov edx, OFFSET messageRecord
        mov ecx, 310
        call WriteToFile
    
        mov eax, fileHandle
        call CloseFile
    
    SaveDoneReceiver:
        pop edi
        pop esi
        pop edx
        pop ecx
        pop ebx
        pop eax
        ret
    SaveMessageToReceiverFile ENDP

    AutoAddContact PROC
        push eax
        push ebx
        push ecx
        push edx
        push esi
        push edi
    
        ; Copy currentUser (sender) to contactName temporarily
        push esi
        push edi
        mov esi, OFFSET currentUser
        mov edi, OFFSET tempBuffer
        mov ecx, 51
        rep movsb
        pop edi
        pop esi
    
        ; Build receiver's contacts file name (contactName is the receiver)
        push esi
        push edi
        mov esi, OFFSET contactName
        mov edi, OFFSET tempBuffer + 100
        mov ecx, 51
        rep movsb
        pop edi
        pop esi
    
        ; Swap: use contactName as current context
        push esi
        push edi
        mov esi, OFFSET contactName
        mov edi, OFFSET username
        mov ecx, 51
        rep movsb
        pop edi
        pop esi
    
        ; Build contacts file for receiver (contactName)
        call ClearFileNameBuffer2
        push esi
        push edi
        mov esi, OFFSET contactName
        mov edi, OFFSET fileNameBuffer2
    CopyRecUser:
        lodsb
        cmp al, 0
        je RecUserDone
        stosb
        jmp CopyRecUser
    RecUserDone:
        mov esi, OFFSET contactsFileExt
    CopyRecExt:
        lodsb
        cmp al, 0
        je RecExtDone
        stosb
        jmp CopyRecExt
    RecExtDone:
        pop edi
        pop esi
    
        ; Check if sender is in receiver's contacts
        mov edx, OFFSET fileNameBuffer2
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne CheckContactsAutoAdd
    
        ; File doesn't exist, can't add
        jmp AutoAddDone
    
    CheckContactsAutoAdd:
        mov fileHandle, eax
    
    CheckLoopAutoAdd:
        mov eax, fileHandle
        mov edx, OFFSET contactRecord
        mov ecx, 51
        call ReadFromFile
        cmp eax, 0
        jne DecryptAndCompareAuto
    
        ; Not found, add sender
        mov eax, fileHandle
        call CloseFile
        jmp AddSenderToReceiver
    
    DecryptAndCompareAuto:
        ; Decrypt
        push esi
        mov esi, OFFSET contactRecord
        mov al, encryptionKey
    
    DecAutoLoop:
        cmp BYTE PTR [esi], 0
        je DecAutoDone
        xor BYTE PTR [esi], al
        inc esi
        jmp DecAutoLoop
    
    DecAutoDone:
        pop esi
    
        ; Compare with sender (currentUser stored in tempBuffer)
        push esi
        push edi
        mov esi, OFFSET tempBuffer
        mov edi, OFFSET contactRecord
    
    CompAutoLoop:
        lodsb
        mov bl, BYTE PTR [edi]
        inc edi
        cmp al, bl
        jne NotSameAuto
        cmp al, 0
        je AlreadyExistsAuto
        jmp CompAutoLoop
    
    NotSameAuto:
        pop edi
        pop esi
        jmp CheckLoopAutoAdd
    
    AlreadyExistsAuto:
        pop edi
        pop esi
        mov eax, fileHandle
        call CloseFile
        jmp AutoAddDone
    
    AddSenderToReceiver:
        ; Copy sender name to contactName temporarily
        push esi
        push edi
        mov esi, OFFSET tempBuffer
        mov edi, OFFSET contactRecord
        mov ecx, 51
    CopySenderName:
        lodsb
        stosb
        cmp al, 0
        je DoneCopySenderName
        loop CopySenderName
    
    DoneCopySenderName:
        pop edi
        pop esi
    
        ; Encrypt sender name
        push esi
        mov esi, OFFSET contactRecord
        mov al, encryptionKey
    
    EncSenderLoop:
        cmp BYTE PTR [esi], 0
        je EncSenderDone
        xor BYTE PTR [esi], al
        inc esi
        jmp EncSenderLoop
    
    EncSenderDone:
        pop esi
    
        ; Append to file
        mov edx, OFFSET fileNameBuffer2
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne ReadExistingContacts
        jmp AutoAddDone
    
    ReadExistingContacts:
        mov fileHandle, eax
        xor ebx, ebx
    
    ReadContactsAutoLoop:
        push ebx
        mov eax, fileHandle
        mov edx, OFFSET tempBuffer
        add edx, ebx
        mov ecx, 51
        call ReadFromFile
        pop ebx
    
        cmp eax, 0
        jne ContinueReadAuto
        jmp DoneReadAuto
    
    ContinueReadAuto:
        add ebx, 51
        cmp ebx, 2000
        jae DoneReadAuto
        jmp ReadContactsAutoLoop
    
    DoneReadAuto:
        mov eax, fileHandle
        call CloseFile
    
        ; Write back
        mov edx, OFFSET fileNameBuffer2
        call CreateOutputFile
        mov fileHandle, eax
    
        cmp ebx, 0
        jne WriteExistingAuto
        jmp WriteNewContactAuto
    
    WriteExistingAuto:
        mov eax, fileHandle
        mov edx, OFFSET tempBuffer
        mov ecx, ebx
        call WriteToFile
    
    WriteNewContactAuto:
        mov eax, fileHandle
        mov edx, OFFSET contactRecord
        mov ecx, 51
        call WriteToFile
    
        mov eax, fileHandle
        call CloseFile
    
    AutoAddDone:
        pop edi
        pop esi
        pop edx
        pop ecx
        pop ebx
        pop eax
        ret
    AutoAddContact ENDP

    SaveMessageToGroupFile PROC
        push eax
        push ebx
        push ecx
        push edx
        push esi
        push edi
    
        call BuildGroupChatFileName
    
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne FileExistsGroup
        jmp CreateNewFileGroup
    
    FileExistsGroup:
        mov fileHandle, eax
        xor ebx, ebx
    
    ReadExistingLoopGroup:
        mov eax, fileHandle
        mov edx, OFFSET largeMessageBuffer
        add edx, ebx
        mov ecx, 310
        call ReadFromFile
    
        cmp eax, 0
        jne ContinueReadGroup
        jmp DoneReadingGroup
    
    ContinueReadGroup:
        add ebx, 310
        jmp ReadExistingLoopGroup
    
    DoneReadingGroup:
        mov eax, fileHandle
        call CloseFile
    
        mov edx, OFFSET fileNameBuffer
        call CreateOutputFile
        mov fileHandle, eax
    
        cmp ebx, 0
        jne WriteExistingGroup
        jmp WriteNewMessageGroup
    
    WriteExistingGroup:
        mov eax, fileHandle
        mov edx, OFFSET largeMessageBuffer
        mov ecx, ebx
        call WriteToFile
    
    WriteNewMessageGroup:
        mov eax, fileHandle
        mov edx, OFFSET messageRecord
        mov ecx, 310
        call WriteToFile
    
        mov eax, fileHandle
        call CloseFile
        jmp SaveDoneGroup
    
    CreateNewFileGroup:
        mov edx, OFFSET fileNameBuffer
        call CreateOutputFile
        mov fileHandle, eax
    
        mov eax, fileHandle
        mov edx, OFFSET messageRecord
        mov ecx, 310
        call WriteToFile
    
        mov eax, fileHandle
        call CloseFile
    
    SaveDoneGroup:
        pop edi
        pop esi
        pop edx
        pop ecx
        pop ebx
        pop eax
        ret
    SaveMessageToGroupFile ENDP

    DecryptAndDisplay PROC
        push esi
        push edi
    
        mov esi, OFFSET messageRecord
        mov al, encryptionKey
    
    DecLoop:
        cmp BYTE PTR [esi], 0
        je DecDone
        xor BYTE PTR [esi], al
        inc esi
        jmp DecLoop
    
    DecDone:
        mov edx, OFFSET messageRecord
        call WriteString
    
        ; *** FIX: Show message status for sent messages ***
        ; Check if message starts with "[You"
        push esi
        mov esi, OFFSET messageRecord
    
        ; Compare first 4 characters with "[You"
        cmp BYTE PTR [esi], '['
        jne NotYourMessage
        inc esi
        cmp BYTE PTR [esi], 'Y'
        jne NotYourMessage
        inc esi
        cmp BYTE PTR [esi], 'o'
        jne NotYourMessage
        inc esi
        cmp BYTE PTR [esi], 'u'
        jne NotYourMessage
    
        ; It's your message, show status
        ; For now, show double tick (you can enhance this later)
        mov edx, OFFSET doubleTick
        call WriteString
        jmp StatusDone
    
    NotYourMessage:
        ; Check if it's a scheduled message
        mov esi, OFFSET messageRecord
        cmp BYTE PTR [esi], '['
        jne StatusDone
        inc esi
        cmp BYTE PTR [esi], 'S'
        jne StatusDone
        inc esi
        cmp BYTE PTR [esi], 'c'
        jne StatusDone
        inc esi
        cmp BYTE PTR [esi], 'h'
        jne StatusDone
    
        ; It's scheduled
        mov edx, OFFSET singleTick
        call WriteString
    
    StatusDone:
        pop esi
        call Crlf
    
        pop edi
        pop esi
        ret
    DecryptAndDisplay ENDP

    RefreshChat PROC
        mov messagesDisplayed, 0
        call DisplayChatInterface
        ret
    RefreshChat ENDP

    RefreshGroupChat PROC
        mov messagesDisplayed, 0
        call DisplayGroupChatInterface
        ret
    RefreshGroupChat ENDP

    LoadSelectedContact PROC
        call BuildContactsFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        mov fileHandle, eax
    
        mov ecx, selectedContact
        dec ecx
    
    LoadLoop:
        cmp ecx, 0
        je Found
        push ecx
        mov eax, fileHandle
        mov edx, OFFSET contactRecord
        mov ecx, 51
        call ReadFromFile
        pop ecx
        dec ecx
        jmp LoadLoop
    
    Found:
        mov eax, fileHandle
        mov edx, OFFSET contactRecord
        mov ecx, 51
        call ReadFromFile
    
        call DecryptContactName
    
        push esi
        push edi
        mov esi, OFFSET contactRecord
        mov edi, OFFSET contactName
        mov ecx, 51
        rep movsb
        pop edi
        pop esi
    
        mov eax, fileHandle
        call CloseFile
        ret
    LoadSelectedContact ENDP

    LoadSelectedGroup PROC
        call BuildGroupsFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        mov fileHandle, eax
    
        mov ecx, selectedGroup
        dec ecx
    
    LoadGroupLoop:
        cmp ecx, 0
        je FoundGroup
        push ecx
        mov eax, fileHandle
        mov edx, OFFSET groupRecord
        mov ecx, 51
        call ReadFromFile
        pop ecx
        dec ecx
        jmp LoadGroupLoop
    
    FoundGroup:
        mov eax, fileHandle
        mov edx, OFFSET groupRecord
        mov ecx, 51
        call ReadFromFile
    
        call DecryptGroupName
    
        push esi
        push edi
        mov esi, OFFSET groupRecord
        mov edi, OFFSET groupName
        mov ecx, 51
        rep movsb
        pop edi
        pop esi
    
        mov eax, fileHandle
        call CloseFile
        ret
    LoadSelectedGroup ENDP

    BuildUserFileName PROC
        call ClearFileNameBuffer
        push esi
        push edi
        push eax
    
        mov esi, OFFSET username
        mov edi, OFFSET fileNameBuffer
    CopyUser:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je UserDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyUser
    
    UserDone:
        mov esi, OFFSET userFileExt
    CopyExt:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je ExtDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyExt
    
    ExtDone:
        mov BYTE PTR [edi], 0
        pop eax
        pop edi
        pop esi
        ret
    BuildUserFileName ENDP

    BuildContactsFileName PROC
        call ClearFileNameBuffer
        push esi
        push edi
        push eax
    
        mov esi, OFFSET currentUser
        mov edi, OFFSET fileNameBuffer
    CopyUser2:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je User2Done
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyUser2
    
    User2Done:
        mov esi, OFFSET contactsFileExt
    CopyExt2:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je Ext2Done
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyExt2
    
    Ext2Done:
        mov BYTE PTR [edi], 0
        pop eax
        pop edi
        pop esi
        ret
    BuildContactsFileName ENDP

    BuildGroupsFileName PROC
        call ClearFileNameBuffer
        push esi
        push edi
        push eax
    
        mov esi, OFFSET currentUser
        mov edi, OFFSET fileNameBuffer
    CopyUserG:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je UserGDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyUserG
    
    UserGDone:
        mov esi, OFFSET groupsFileExt
    CopyExtG:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je ExtGDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyExtG
    
    ExtGDone:
        mov BYTE PTR [edi], 0
        pop eax
        pop edi
        pop esi
        ret
    BuildGroupsFileName ENDP

    BuildGroupMembersFileName PROC
        call ClearFileNameBuffer
        push esi
        push edi
        push eax
    
        mov edi, OFFSET fileNameBuffer
        mov esi, OFFSET groupFilePrefix
    CopyPrefix:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je PrefixDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyPrefix
    
    PrefixDone:
        mov esi, OFFSET groupName
    CopyGroupName:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je GroupNameDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyGroupName
    
    GroupNameDone:
        mov esi, OFFSET groupMembersExt
    CopyMemExt:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je MemExtDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyMemExt
    
    MemExtDone:
        mov BYTE PTR [edi], 0
        pop eax
        pop edi
        pop esi
        ret
    BuildGroupMembersFileName ENDP

    BuildGroupChatFileName PROC
        call ClearFileNameBuffer
        push esi
        push edi
        push eax
    
        mov edi, OFFSET fileNameBuffer
        mov esi, OFFSET groupFilePrefix
    CopyPrefixChat:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je PrefixChatDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyPrefixChat
    
    PrefixChatDone:
        mov esi, OFFSET groupName
    CopyGroupNameChat:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je GroupNameChatDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyGroupNameChat
    
    GroupNameChatDone:
        mov esi, OFFSET groupChatExt
    CopyChatExt:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je ChatExtDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyChatExt
    
    ChatExtDone:
        mov BYTE PTR [edi], 0
        pop eax
        pop edi
        pop esi
        ret
    BuildGroupChatFileName ENDP

    BuildChatFileName PROC
        call ClearFileNameBuffer
        push esi
        push edi
        push eax
    
        mov esi, OFFSET currentUser
        mov edi, OFFSET fileNameBuffer
    CopyCurr:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je CurrDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyCurr
    
    CurrDone:
        mov BYTE PTR [edi], '_'
        inc edi
        mov esi, OFFSET contactName
    CopyCont:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je ContDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyCont
    
    ContDone:
        mov esi, OFFSET chatFileExt
    CopyChat:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je ChatDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyChat
    
    ChatDone:
        mov BYTE PTR [edi], 0
        pop eax
        pop edi
        pop esi
        ret
    BuildChatFileName ENDP

    BuildReceiverChatFileName PROC
        call ClearFileNameBuffer2
        push esi
        push edi
        push eax
    
        mov esi, OFFSET contactName
        mov edi, OFFSET fileNameBuffer2
    CopyCont2:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je Cont2Done
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyCont2
    
    Cont2Done:
        mov BYTE PTR [edi], '_'
        inc edi
        mov esi, OFFSET currentUser
    CopyCurr2:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je Curr2Done
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyCurr2
    
    Curr2Done:
        mov esi, OFFSET chatFileExt
    CopyChat2:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je Chat2Done
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyChat2
    
    Chat2Done:
        mov BYTE PTR [edi], 0
        pop eax
        pop edi
        pop esi
        ret
    BuildReceiverChatFileName ENDP

    CreateUserFile PROC
        call BuildUserFileName
        mov edx, OFFSET fileNameBuffer
        call CreateOutputFile
        mov fileHandle, eax
    
        push esi
        mov esi, OFFSET password
        xor ecx, ecx
    
    CountPasswordLen:
        cmp BYTE PTR [esi+ecx], 0
        je DoneCounting
        inc ecx
        jmp CountPasswordLen
    
    DoneCounting:
        inc ecx
        pop esi
    
        mov eax, fileHandle
        mov edx, OFFSET password
        call WriteToFile
    
        mov eax, fileHandle
        call CloseFile
        ret
    CreateUserFile ENDP

    CreateContactsFile PROC
        call BuildContactsFileName
        mov edx, OFFSET fileNameBuffer
        call CreateOutputFile
        push eax
        call CloseFile
        pop eax
        ret
    CreateContactsFile ENDP

    CreateGroupsFile PROC
        call BuildGroupsFileName
        mov edx, OFFSET fileNameBuffer
        call CreateOutputFile
        push eax
        call CloseFile
        pop eax
        ret
    CreateGroupsFile ENDP

    CreateGroupMembersFile PROC
        call BuildGroupMembersFileName
        mov edx, OFFSET fileNameBuffer
        call CreateOutputFile
        push eax
        call CloseFile
        pop eax
        ret
    CreateGroupMembersFile ENDP

    ComparePasswords PROC
        push esi
        push edi
        mov esi, OFFSET password
        mov edi, OFFSET tempPassword
    
    CompLoop:
        lodsb
        cmp al, BYTE PTR [edi]
        jne NotMatch
        cmp al, 0
        je Match
        inc edi
        jmp CompLoop
    
    Match:
        pop edi
        pop esi
        mov eax, 1
        ret
    
    NotMatch:
        pop edi
        pop esi
        xor eax, eax
        ret
    ComparePasswords ENDP

    LoadContactsCount PROC
        call BuildContactsFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        je NoContFile
    
        mov fileHandle, eax
        mov contactCount, 0
    
    CountContacts:
        mov eax, fileHandle
        mov edx, OFFSET contactRecord
        mov ecx, 51
        call ReadFromFile
        cmp eax, 0
        je DoneCount
        inc contactCount
        jmp CountContacts
    
    DoneCount:
        mov eax, fileHandle
        call CloseFile
        ret
    
    NoContFile:
        mov contactCount, 0
        ret
    LoadContactsCount ENDP

    LoadGroupsCount PROC
        call BuildGroupsFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        je NoGroupFile
    
        mov fileHandle, eax
        mov groupCount, 0
    
    CountGroups:
        mov eax, fileHandle
        mov edx, OFFSET groupRecord
        mov ecx, 51
        call ReadFromFile
        cmp eax, 0
        je DoneCountGroup
        inc groupCount
        jmp CountGroups
    
    DoneCountGroup:
        mov eax, fileHandle
        call CloseFile
        ret
    
    NoGroupFile:
        mov groupCount, 0
        ret
    LoadGroupsCount ENDP

    CheckContactExists PROC
        call BuildContactsFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        je NotExists
    
        mov fileHandle, eax
    
    CheckLoop:
        mov eax, fileHandle
        mov edx, OFFSET tempBuffer
        mov ecx, 51
        call ReadFromFile
        cmp eax, 0
        je NotExistsButClose
    
        push esi
        mov esi, OFFSET tempBuffer
        mov al, encryptionKey
    DecryptTemp:
        cmp BYTE PTR [esi], 0
        je DecryptTempDone
        xor BYTE PTR [esi], al
        inc esi
        jmp DecryptTemp
    DecryptTempDone:
        pop esi
    
        push esi
        push edi
        mov esi, OFFSET contactName
        mov edi, OFFSET tempBuffer
    CompareLoop:
        lodsb
        mov bl, BYTE PTR [edi]
        inc edi
        cmp al, bl
        jne NotSame
        cmp al, 0
        je Exists
        jmp CompareLoop
    
    NotSame:
        pop edi
        pop esi
        jmp CheckLoop
    
    Exists:
        pop edi
        pop esi
        mov eax, fileHandle
        call CloseFile
        mov eax, 1
        ret
    
    NotExistsButClose:
        mov eax, fileHandle
        call CloseFile
    
    NotExists:
        xor eax, eax
        ret
    CheckContactExists ENDP

    CheckGroupExists PROC
        call BuildGroupsFileName
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        je NotExistsGroup
    
        mov fileHandle, eax
    
    CheckLoopGroup:
        mov eax, fileHandle
        mov edx, OFFSET tempBuffer
        mov ecx, 51
        call ReadFromFile
        cmp eax, 0
        je NotExistsButCloseGroup
    
        push esi
        mov esi, OFFSET tempBuffer
        mov al, encryptionKey
    DecryptTempGroup:
        cmp BYTE PTR [esi], 0
        je DecryptTempDoneGroup
        xor BYTE PTR [esi], al
        inc esi
        jmp DecryptTempGroup
    DecryptTempDoneGroup:
        pop esi
    
        push esi
        push edi
        mov esi, OFFSET groupName
        mov edi, OFFSET tempBuffer
    CompareLoopGroup:
        lodsb
        mov bl, BYTE PTR [edi]
        inc edi
        cmp al, bl
        jne NotSameGroup
        cmp al, 0
        je ExistsGroup
        jmp CompareLoopGroup
    
    NotSameGroup:
        pop edi
        pop esi
        jmp CheckLoopGroup
    
    ExistsGroup:
        pop edi
        pop esi
        mov eax, fileHandle
        call CloseFile
        mov eax, 1
        ret
    
    NotExistsButCloseGroup:
        mov eax, fileHandle
        call CloseFile
    
    NotExistsGroup:
        xor eax, eax
        ret
    CheckGroupExists ENDP

    SaveContact PROC
        push eax
        push ebx
        push ecx
        push edx
        push esi
        push edi
    
        call BuildContactsFileName
    
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        je CreateNewContactFile
    
        mov fileHandle, eax
        mov edi, OFFSET tempBuffer
        xor ebx, ebx
    
    ReadContactsLoop:
        push edi
        push ebx
        mov eax, fileHandle
        mov edx, OFFSET username
        mov ecx, 51
        call ReadFromFile
        pop ebx
        pop edi
    
        cmp eax, 0
        je DoneReadingContacts
    
        mov esi, OFFSET username
        mov ecx, 51
        rep movsb
        add ebx, 51
        jmp ReadContactsLoop
    
    DoneReadingContacts:
        mov eax, fileHandle
        call CloseFile
    
        mov edx, OFFSET fileNameBuffer
        call CreateOutputFile
        mov fileHandle, eax
    
        cmp eax, INVALID_HANDLE_VALUE
        je SaveContactFailed
    
        cmp ebx, 0
        je WriteNewContact
    
        mov eax, fileHandle
        mov edx, OFFSET tempBuffer
        mov ecx, ebx
        call WriteToFile
    
    WriteNewContact:
        mov eax, fileHandle
        mov edx, OFFSET contactRecord
        mov ecx, 51
        call WriteToFile
    
        mov eax, fileHandle
        call CloseFile
        jmp ContactSaved
    
    CreateNewContactFile:
        mov edx, OFFSET fileNameBuffer
        call CreateOutputFile
    
        cmp eax, INVALID_HANDLE_VALUE
        je SaveContactFailed
    
        mov fileHandle, eax
    
        mov eax, fileHandle
        mov edx, OFFSET contactRecord
        mov ecx, 51
        call WriteToFile
    
        mov eax, fileHandle
        call CloseFile
    
    ContactSaved:
        pop edi
        pop esi
        pop edx
        pop ecx
        pop ebx
        pop eax
        ret
    
    SaveContactFailed:
        pop edi
        pop esi
        pop edx
        pop ecx
        pop ebx
        pop eax
        ret
    SaveContact ENDP

    SaveGroup PROC
        push eax
        push ebx
        push ecx
        push edx
        push esi
        push edi
    
        call BuildGroupsFileName
    
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        je CreateNewGroupFile
    
        mov fileHandle, eax
        mov edi, OFFSET tempBuffer
        xor ebx, ebx
    
    ReadGroupsLoop:
        push edi
        push ebx
        mov eax, fileHandle
        mov edx, OFFSET username
        mov ecx, 51
        call ReadFromFile
        pop ebx
        pop edi
    
        cmp eax, 0
        je DoneReadingGroups
    
        mov esi, OFFSET username
        mov ecx, 51
        rep movsb
        add ebx, 51
        jmp ReadGroupsLoop
    
    DoneReadingGroups:
        mov eax, fileHandle
        call CloseFile
    
        mov edx, OFFSET fileNameBuffer
        call CreateOutputFile
        mov fileHandle, eax
    
        cmp eax, INVALID_HANDLE_VALUE
        je SaveGroupFailed
    
        cmp ebx, 0
        je WriteNewGroup
    
        mov eax, fileHandle
        mov edx, OFFSET tempBuffer
        mov ecx, ebx
        call WriteToFile
    
    WriteNewGroup:
        mov eax, fileHandle
        mov edx, OFFSET groupRecord
        mov ecx, 51
        call WriteToFile
    
        mov eax, fileHandle
        call CloseFile
        jmp GroupSaved
    
    CreateNewGroupFile:
        mov edx, OFFSET fileNameBuffer
        call CreateOutputFile
    
        cmp eax, INVALID_HANDLE_VALUE
        je SaveGroupFailed
    
        mov fileHandle, eax
    
        mov eax, fileHandle
        mov edx, OFFSET groupRecord
        mov ecx, 51
        call WriteToFile
    
        mov eax, fileHandle
        call CloseFile
    
    GroupSaved:
        pop edi
        pop esi
        pop edx
        pop ecx
        pop ebx
        pop eax
        ret
    
    SaveGroupFailed:
        pop edi
        pop esi
        pop edx
        pop ecx
        pop ebx
        pop eax
        ret
    SaveGroup ENDP

    SaveGroupMember PROC
        push eax
        push ebx
        push ecx
        push edx
    
        call BuildGroupMembersFileName
    
        ; Try to open for append
        mov edx, OFFSET fileNameBuffer
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne FileExistsMember
    
        ; File doesn't exist, create new
        mov edx, OFFSET fileNameBuffer
        call CreateOutputFile
        mov fileHandle, eax
    
        mov eax, fileHandle
        mov edx, OFFSET memberBuffer
        mov ecx, 51
        call WriteToFile
    
        mov eax, fileHandle
        call CloseFile
        jmp MemberSaved
    
    FileExistsMember:
        mov fileHandle, eax
        xor ebx, ebx
    
        ; Read all existing members
    ReadMembersLoop:
        mov eax, fileHandle
        mov edx, OFFSET tempBuffer
        add edx, ebx
        mov ecx, 51
        call ReadFromFile
    
        cmp eax, 0
        je DoneReadingMembers
    
        add ebx, 51
        cmp ebx, 1950  ; Safety check
        jae DoneReadingMembers
        jmp ReadMembersLoop
    
    DoneReadingMembers:
        mov eax, fileHandle
        call CloseFile
    
        ; Write everything back plus new member
        mov edx, OFFSET fileNameBuffer
        call CreateOutputFile
        mov fileHandle, eax
    
        ; Write existing members
        cmp ebx, 0
        je WriteNewMemberOnly
    
        mov eax, fileHandle
        mov edx, OFFSET tempBuffer
        mov ecx, ebx
        call WriteToFile
    
    WriteNewMemberOnly:
        ; Write new member
        mov eax, fileHandle
        mov edx, OFFSET memberBuffer
        mov ecx, 51
        call WriteToFile
    
        mov eax, fileHandle
        call CloseFile
    
    MemberSaved:
        pop edx
        pop ecx
        pop ebx
        pop eax
        ret
    SaveGroupMember ENDP

    EncryptContactName PROC
        push esi
        push edi
        push eax
        push ecx
    
        mov esi, OFFSET contactName
        mov edi, OFFSET contactRecord
        mov al, encryptionKey
    
    EncryptLoop:
        mov bl, BYTE PTR [esi]
        cmp bl, 0
        je EncryptDone
        xor bl, al
        mov BYTE PTR [edi], bl
        inc esi
        inc edi
        jmp EncryptLoop
    
    EncryptDone:
        mov BYTE PTR [edi], 0
        pop ecx
        pop eax
        pop edi
        pop esi
        ret
    EncryptContactName ENDP

    EncryptGroupName PROC
        push esi
        push edi
        push eax
        push ecx
    
        mov esi, OFFSET groupName
        mov edi, OFFSET groupRecord
        mov al, encryptionKey
    
    EncryptLoopGroup:
        mov bl, BYTE PTR [esi]
        cmp bl, 0
        je EncryptDoneGroup
        xor bl, al
        mov BYTE PTR [edi], bl
        inc esi
        inc edi
        jmp EncryptLoopGroup
    
    EncryptDoneGroup:
        mov BYTE PTR [edi], 0
        pop ecx
        pop eax
        pop edi
        pop esi
        ret
    EncryptGroupName ENDP

    EncryptMemberName PROC
        push esi
        push edi
        push eax
        push ecx
    
        ; First, copy username to memberBuffer
        mov esi, OFFSET username
        mov edi, OFFSET memberBuffer
        mov ecx, 51
    
    CopyUsernameLoop:
        mov al, BYTE PTR [esi]
        mov BYTE PTR [edi], al
        cmp al, 0
        je CopyUsernameDone
        inc esi
        inc edi
        dec ecx
        cmp ecx, 0
        ja CopyUsernameLoop
    
    CopyUsernameDone:
        ; Now encrypt memberBuffer in place
        mov esi, OFFSET memberBuffer
        mov al, encryptionKey
    
    EncryptLoopMember:
        cmp BYTE PTR [esi], 0
        je EncryptDoneMember
        xor BYTE PTR [esi], al
        inc esi
        jmp EncryptLoopMember
    
    EncryptDoneMember:
        pop ecx
        pop eax
        pop edi
        pop esi
        ret
    EncryptMemberName ENDP

    DecryptContactName PROC
        push esi
        mov esi, OFFSET contactRecord
        mov al, encryptionKey
    
    DecryptLoop:
        cmp BYTE PTR [esi], 0
        je DecryptDone
        xor BYTE PTR [esi], al
        inc esi
        jmp DecryptLoop
    
    DecryptDone:
        pop esi
        ret
    DecryptContactName ENDP

    DecryptGroupName PROC
        push esi
        mov esi, OFFSET groupRecord
        mov al, encryptionKey
    
    DecryptLoopGroup:
        cmp BYTE PTR [esi], 0
        je DecryptDoneGroup
        xor BYTE PTR [esi], al
        inc esi
        jmp DecryptLoopGroup
    
    DecryptDoneGroup:
        pop esi
        ret
    DecryptGroupName ENDP

    DecryptMemberName PROC
        push esi
        mov esi, OFFSET memberBuffer
        mov al, encryptionKey
    
    DecryptLoopMember:
        cmp BYTE PTR [esi], 0
        je DecryptDoneMember
        xor BYTE PTR [esi], al
        inc esi
        jmp DecryptLoopMember
    
    DecryptDoneMember:
        pop esi
        ret
    DecryptMemberName ENDP

    ClearFileNameBuffer PROC
        push edi
        push ecx
        push eax
    
        mov edi, OFFSET fileNameBuffer
        mov ecx, 151
        xor al, al
    
    ClearLoop1:
        mov BYTE PTR [edi], al
        inc edi
        dec ecx
        cmp ecx, 0
        ja ClearLoop1
    
        pop eax
        pop ecx
        pop edi
        ret
    ClearFileNameBuffer ENDP

    ClearFileNameBuffer2 PROC
        push edi
        push ecx
        push eax
    
        mov edi, OFFSET fileNameBuffer2
        mov ecx, 151
        xor al, al
    
    ClearLoop2:
        mov BYTE PTR [edi], al
        inc edi
        dec ecx
        cmp ecx, 0
        ja ClearLoop2
    
        pop eax
        pop ecx
        pop edi
        ret
    ClearFileNameBuffer2 ENDP

    AddGroupToMember PROC
        push eax
        push ebx
        push ecx
        push edx
        push esi
        push edi
    
        ; Build member's groups file (username is the member)
        push esi
        push edi
        push eax
    
        mov esi, OFFSET username
        mov edi, OFFSET fileNameBuffer2
    
    CopyMemberUser:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je MemberUserDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyMemberUser
    
    MemberUserDone:
        mov esi, OFFSET groupsFileExt
    CopyGroupExt:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je GroupExtDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyGroupExt
    
    GroupExtDone:
        mov BYTE PTR [edi], 0
        pop eax
        pop edi
        pop esi
    
        ; Check if member's group file exists
        mov edx, OFFSET fileNameBuffer2
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        jne MemberGroupFileExists
    
        ; Create new groups file for member
        mov edx, OFFSET fileNameBuffer2
        call CreateOutputFile
        mov fileHandle, eax
    
        ; Write encrypted group name
        mov eax, fileHandle
        mov edx, OFFSET groupRecord
        mov ecx, 51
        call WriteToFile
    
        mov eax, fileHandle
        call CloseFile
        jmp AddGroupDone
    
    MemberGroupFileExists:
        ; Read existing groups
        mov fileHandle, eax
        xor ebx, ebx
    
    ReadMemberGroups:
        mov eax, fileHandle
        mov edx, OFFSET tempBuffer
        add edx, ebx
        mov ecx, 51
        call ReadFromFile
    
        cmp eax, 0
        je DoneReadMemberGroups
    
        add ebx, 51
        cmp ebx, 1950
        jae DoneReadMemberGroups
        jmp ReadMemberGroups
    
    DoneReadMemberGroups:
        mov eax, fileHandle
        call CloseFile
    
        ; Write back all groups plus new one
        mov edx, OFFSET fileNameBuffer2
        call CreateOutputFile
        mov fileHandle, eax
    
        cmp ebx, 0
        je WriteNewGroupToMember
    
        mov eax, fileHandle
        mov edx, OFFSET tempBuffer
        mov ecx, ebx
        call WriteToFile
    
    WriteNewGroupToMember:
        mov eax, fileHandle
        mov edx, OFFSET groupRecord
        mov ecx, 51
        call WriteToFile
    
        mov eax, fileHandle
        call CloseFile
    
    AddGroupDone:
        pop edi
        pop esi
        pop edx
        pop ecx
        pop ebx
        pop eax
        ret
    AddGroupToMember ENDP

    ShowUnreadCount PROC
        push eax
        push edx
    
        call CheckUnreadMessages
    
        mov eax, unreadCount
        cmp eax, 0
        je NoUnread
    
        mov edx, OFFSET newMessageNotification
        call WriteString
        mov eax, unreadCount
        call WriteDec
        mov edx, OFFSET unreadCountMsg
        call WriteString
    
    NoUnread:
        pop edx
        pop eax
        ret
    ShowUnreadCount ENDP

    CheckUnreadMessages PROC
        push ebx
        push ecx
        push edx
    
        mov unreadCount, 0
    
        ; Build unread file name for current user
        push esi
        push edi
        push eax
    
        mov esi, OFFSET currentUser
        mov edi, OFFSET fileNameBuffer2
    
    CopyUserUnread:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je UserUnreadDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyUserUnread
    
    UserUnreadDone:
        mov esi, OFFSET unreadFileExt
    CopyUnreadExt:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je UnreadExtDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyUnreadExt
    
    UnreadExtDone:
        mov BYTE PTR [edi], 0
        pop eax
        pop edi
        pop esi
    
        ; Try to open unread file
        mov edx, OFFSET fileNameBuffer2
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        je NoUnreadFile
    
        mov fileHandle, eax
    
    CountUnread:
        mov eax, fileHandle
        mov edx, OFFSET tempBuffer
        mov ecx, 51
        call ReadFromFile
        cmp eax, 0
        je DoneCountUnread
    
        inc unreadCount
        jmp CountUnread
    
    DoneCountUnread:
        mov eax, fileHandle
        call CloseFile
    
    NoUnreadFile:
        pop edx
        pop ecx
        pop ebx
        ret
    CheckUnreadMessages ENDP

    MarkAsRead PROC
        push eax
        push edx
    
        ; Delete unread marker for this contact/group
        ; Build unread marker filename: currentUser_contactName_unread.dat
        push esi
        push edi
        push eax
    
        mov esi, OFFSET currentUser
        mov edi, OFFSET fileNameBuffer2
    
    CopyUserRead:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je UserReadDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyUserRead
    
    UserReadDone:
        mov BYTE PTR [edi], '_'
        inc edi
    
        mov esi, OFFSET contactName
    CopyContactRead:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je ContactReadDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyContactRead
    
    ContactReadDone:
        mov esi, OFFSET unreadFileExt
    CopyUnreadExtRead:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je UnreadExtReadDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyUnreadExtRead
    
    UnreadExtReadDone:
        mov BYTE PTR [edi], 0
        pop eax
        pop edi
        pop esi
    
        ; Try to delete the file (marking as read)
        mov edx, OFFSET fileNameBuffer2
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        je AlreadyRead
    
        call CloseFile
        ; In real implementation, you would delete the file here
        ; For now, we just close it
    
    AlreadyRead:
        pop edx
        pop eax
        ret
    MarkAsRead ENDP

    CheckUnreadFromContact PROC
        push eax
        push edx
        push esi
        push edi
    
        ; Build filename: contactRecord_currentUser_unread.dat
        push esi
        push edi
        push eax
    
        mov esi, OFFSET contactRecord
        mov edi, OFFSET fileNameBuffer2
    
    CopyContactCheck:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je ContactCheckDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyContactCheck
    
    ContactCheckDone:
        mov BYTE PTR [edi], '_'
        inc edi
    
        mov esi, OFFSET currentUser
    CopyUserCheck:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je UserCheckDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyUserCheck
    
    UserCheckDone:
        mov esi, OFFSET unreadFileExt
    CopyExtCheck:
        mov al, BYTE PTR [esi]
        cmp al, 0
        je ExtCheckDone
        mov BYTE PTR [edi], al
        inc esi
        inc edi
        jmp CopyExtCheck
    
    ExtCheckDone:
        mov BYTE PTR [edi], 0
        pop eax
        pop edi
        pop esi
    
        ; Check if file exists
        mov edx, OFFSET fileNameBuffer2
        call OpenInputFile
        cmp eax, INVALID_HANDLE_VALUE
        je NoUnreadFrom
    
        call CloseFile
    
        ; Show unread indicator
        mov edx, OFFSET unreadMsg
        call WriteString
        jmp CheckUnreadDone
    
    NoUnreadFrom:
        ; No unread messages
    
    CheckUnreadDone:
        pop edi
        pop esi
        pop edx
        pop eax
        ret
    CheckUnreadFromContact ENDP

    WaitKey PROC
        call Crlf
        call WaitMsg
        ret
    WaitKey ENDP

    ReadPasswordMasked PROC
        push eax
        push ebx
        push ecx
        push edi
    
        mov edi, OFFSET password
        xor ebx, ebx  ; Character counter
    
    ReadPasswordLoop:
        call ReadChar  ; Read one character (no echo)
    
        cmp al, 13  ; Enter key
        je PasswordDone
    
        cmp al, 8  ; Backspace
        je HandleBackspace
    
        cmp ebx, 49  ; Max 49 characters
        jae ReadPasswordLoop
    
        ; Store character
        mov BYTE PTR [edi], al
        inc edi
        inc ebx
    
        ; Display asterisk
        push eax
        mov al, '*'
        call WriteChar
        pop eax
    
        jmp ReadPasswordLoop
    
    HandleBackspace:
        cmp ebx, 0
        je ReadPasswordLoop
    
        dec edi
        dec ebx
        mov BYTE PTR [edi], 0
    
        ; Move cursor back and erase
        mov al, 8
        call WriteChar
        mov al, ' '
        call WriteChar
        mov al, 8
        call WriteChar
    
        jmp ReadPasswordLoop
    
    PasswordDone:
        mov BYTE PTR [edi], 0  ; Null terminate
        call Crlf
    
        pop edi
        pop ecx
        pop ebx
        pop eax
        ret
    ReadPasswordMasked ENDP

    ExitApplication PROC
        call Crlf
        mov edx, OFFSET appTitle
        call WriteString
        call Crlf
        exit
    ExitApplication ENDP

    END main