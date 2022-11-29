# Windows Artifacts

## Default Path for System and User Profile Folder

!!! tip "Folder Structure"
    Important for examiners to be familiar with the operating system artifacts and their default locations for each versions

| Operating System     | Default System Folder | User Profile Folders        |
|----------------------|-----------------------|-----------------------------|
| Windows 2000         | `C:\WINNT`            | `C:\Documents and Settings` |
| Windows XP           | `C:\Windows`          | `C:\Documents and Settings` |
| Windows Vista/7/8/10 | `C:\Windows`          | `C:\Users`                  |

---

## Important Folders/Files

| Folder/Files                                                                                   | Subfolders/files                                                                                      | Path                                                                                                                                                                                                 | Description                                                                                                                                                                                                                                                                                                                                         |
|------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Root                                                                                           | Application Data <br/> Cookies <br/> Desktop <br/> Favorites <br/> Etc.<br/> [NTUSER.DAT](#ntuserdat) |                                                                                                                                                                                                      | Named after the user's login name                                                                                                                                                                                                                                                                                                                   |
| Windows 2000/XP <br/> ==Recycler== <br/><br/> Windows Vista/7/8/10/11 <br/> ==`$Recycle.bin`== | Windows Vista/7/8/10 <br/> `$I<number>.<original extension>` <br/> `$R<number>.<original extension>`  | `C:\Users\%UserName%\$RECYCLE.BIN\<SID>`                                                                                                                                                             | Files deleted will be sent to the Recycle Bin <br/><br/> Windows 2000/XP <br/> The deleted files are stored in a hidden file called [INFO2]("Contains original file name and path, date and time of deletion") <br/><br/> Windows Vista/7/8/10 <br/> Individual index files begin with `$I` <br/> Deleted file name is renamed and begins with `$R` |
| Low Folders                                                                                    | Cookies <br/> Temporary Internet Files <br/> History                                                  |                                                                                                                                                                                                      | Microsoft uses it to ==protect system== against malware <br/> Data placed in these folders runs with ==least privilege== <br/> ==Examiners== must access both the ==normal== and ==low== folders to have a complete investigation                                                                                                                   |
| Cookies Folder                                                                                 | user_name@domain_name.txt <br/> index.dat                                                             |                                                                                                                                                                                                      | Created by websites and placed on user's computer.<br/> Each cookie is contained in 1 file. [Find Out More](#cookies)                                                                                                                                                                                                                               |
| Temporary Internet Files (TIF)                                                                 |                                                                                                       | Earlier Windows OS <br/> `C:\Users\%UserName%\AppData\Local\Microsoft\Windows\Temporary Internet Files\` <br/><br/> Windows 10 <br/> `C:\Users\%UserName%\AppData\Local\Microsoft\Windows\INetCache` | Mainly for ==Internet Explorer== <br/> Store files that are ==downloaded== and ==cached== <br/> Track user's web browsing ==history== which includes ==web mail== such as Gmail                                                                                                                                                                     |
| Email Folder                                                                                   |                                                                                                       | Windows 10 <br/> `C:\Users\%UserName%\AppData\Local\Comms\Unistore\data\` <br/><br/> Windows 11 <br/> `C:\Users\%UserName%\AppData\Local\Microsoft\Windows Mail`                                     |                                                                                                                                                                                                                                                                                                                                                     |
| Recent Folder                                                                                  |                                                                                                       | `C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\Recent`                                                                                                                                       | Contains ==links files== that links to ==recently== accessed files, folders and application                                                                                                                                                                                                                                                         |
| My Documents                                                                                   |                                                                                                       | `C:\Users\%UserName%\Documents`                                                                                                                                                                      | Default location to store user-generated data                                                                                                                                                                                                                                                                                                       |
| Sent To Folder                                                                                 |                                                                                                       | `C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\SendTo`                                                                                                                                       | When user right-click an object, and choose Send To, the options are contained in this file. [Find Out More](#send-to-folder)                                                                                                                                                                                                                       |
| Temp Folder                                                                                    |                                                                                                       | `C:\Users\%UserName%\AppData\Local\Temp`                                                                                                                                                             | Contains ==created by Windows== while programs are ==running== and different processes are taking place <br/> Usually are an exact match of files/file that is ==stored elsewhere== in the computer or they are an exact duplicate that are waiting to be ==processed==                                                                             |
| Desktop Folder                                                                                 |                                                                                                       | `C:\Users\%UserName%\Desktop`                                                                                                                                                                        | Contains ==items and applications== that are ==intentionally placed== by the user or ==generated== during installation <br/> All User Desktop Folder must be also ==evaluated== as any items present can appear on the Desktop of a specific user                                                                                                   |

### NTUSER.DAT
 - Every user profile has an NTUSER.DAT file
 - It is a registry file
 - Updated by the OS once the user logs out
 - Last written time can be used to pin point user last log out time
 - Requires registry viewer to view the contents

### Cookies
- Examiners can use cookie decoder to decode the cookie and examine the contents
- Cookie can be used for:
  - Authentication
  - Storing site preferences
  - Shopping cart contents
  - Identifier for a server-based session
- Index.dat
  - file is a database file that contains the data about each cookie and pointers to the cookie file to the originating website name
  - Contains dates and the cookie itself contains its own internal date
  - Internal dates can show last modified by the website and its expiration date

### Send To Folder
- Default selections include:
  - Documents
  - Desktop
  - Mail Recipient
  - Drives
- Applications may add additional options to this folder and users has the ability to create entries in this folder

---

## Web Browsers

| Browser           | Favorites Path                  | Bookmarks Path                                                                          | History Path                                                                                                        | Cookies Path                                                                                                                                   | Additional Information               |
|-------------------|---------------------------------|-----------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------|
| Internet Explorer | `C:\Users\%UserName%\Favorites` |                                                                                         | `C:\Users\%UserName%\AppData\Local\Microsoft\Windows\History` <br/><br/> `History.IE5` <br/><br/> `Low\History.IE5` | `C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\Cookies` <br/><br/> `C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\Cookies\Low` |                                      |
| Google Chrome     |                                 | `C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\Default\`                    | `C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\Default\`                                                | `C:\Users\%UserName%\AppData\Local\Google\Chrome\User Data\Default\`                                                                           | Files use ==SQLite== database format |
| Mozilla Firefox   |                                 | `C:\Users\%UserName%\AppData\Roaming\mozilla\Firefox\Profiles\xx.default\places.sqlite` | `C:\Users\%UserName%\AppData\Roaming\mozilla\Firefox\Profiles\xx.default\places.sqlite`                             | `C:\Users\%UserName%\AppData\Roaming\mozilla\Firefox\Profiles\xx.default\places.sqlite`                                                        | Files use ==SQLite== database format |

---

## Online Communication Tools

| Application | History/Conversations Path                                                                                                                     |
|-------------|------------------------------------------------------------------------------------------------------------------------------------------------|
| Skype       | `C:\Users\%UserName%\AppData\Roaming\Skype\<aliases>\main.db`                                                                                  |
| MS Team     | Office 365 Group Mailbox <br/> `Conversation History\Team Chat` <br/><br/> Private Chats <br/> `User's Mailbox\Conversation History\Team Chat` |
