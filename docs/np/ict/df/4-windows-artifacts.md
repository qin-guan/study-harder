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

<table>
<thead>
  <tr>
    <th>Folder/Files</th>
    <th>Subfolders/files</th>
    <th>Path</th>
    <th>Description</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Root</td>
    <td>
        <ul>
            <li>Application Data</li>
            <li>Cookies</li>
            <li>Desktop</li>
            <li>Favorites</li>
            <li>Etc.</li>
            <li><a href="#ntuserdat">NTUSER.DAT</a></li>
        </ul>
    </td>
    <td></td>
    <td>
        <ul>
            <li>Named after the user's login name</li>
        </ul>
    </td>
  </tr>
  <tr>
    <td>Windows 2000/XP <br/> <mark>Recycler</mark> <br/><br/> Windows Vista/7/8/10/11 <br/> <code>$Recycle.bin</code></td>
    <td>
        <ul>
            <li>Windows Vista/7/8/10</li>
            <ul>
                <li>
                  <code>$I&lt;number&gt;.&lt;original extension&gt;</code>
                </li>
                <li>
                <code>$R&lt;number&gt;.&lt;original extension&gt;</code>
                </li>
            </ul>
        </ul>
    </td>
    <td>
        <code>C:\Users\%UserName%\$RECYCLE.BIN\&lt;SID&gt;</code>
    </td>
    <td>
        <ul>
            <li>Files deleted will be sent to the Recycle Bin</li>
        </ul>
        Windows 2000/XP
        <ul>
            <li> The deleted files are stored in a hidden file called <a href="" title="Contains original file name and path, date and time of deletion">INFO2</a></li>
        </ul>
        Windows Vista/7/8/10
        <ul>
            <li>Individual index files begin with <code>$I</code></li>
            <li>Deleted file name is renamed and begins with <code>$R</code></li>
        </ul>
    </td>
  </tr>
  <tr>
    <td>Low Folders</td>
    <td>
        <ul>
            <li>Cookies</li>
            <li>Temporary Internet Files</li>
            <li>History</li>
        </ul>
    </td>
    <td></td>
    <td>
        <ul>
            <li>Microsoft uses it to <mark>protect system</mark> against malware</li>
            <li>Data placed in these folders runs with <mark>least privilege</mark></li>
            <li><mark>Examiners</mark> must access both the <mark>normal</mark> and <mark>low</mark> folders to have a complete investigation</li>
        </ul>
    </td>
  </tr>
  <tr>
    <td>Cookies Folder</td>
    <td>
        <ul>
            <li>user_name@domain_name.txt</li>
            <li>index.dat</li>
        </ul>
    </td>
    <td></td>
    <td>
        <ul>
            <li>Created by websites and placed on user's computer</li>
            <li>Each cookie is contained in 1 file [<a href="#cookies">Find Out More</a>]</li>
        </ul>
    </td>
  </tr>
  <tr>
    <td>Temporary Internet Files (TIF)</td>
    <td></td>
    <td>
        Earlier Windows OS
        <ul>
            <li><code>C:\Users\%UserName%\AppData\Local\Microsoft\Windows\Temporary Internet Files\</code></li>
        </ul>
        Windows 10
        <ul>
            <li><code>C:\Users\%UserName%\AppData\Local\Microsoft\Windows\INetCache\</code></li>
        </ul>
    </td>
    <td>
        <ul>
            <li>Mainly for <mark>Internet Explorer</mark></li>
            <li>Store files that are <mark>downloaded</mark> and <mark>cached</mark></li>
            <li>Track user's web browsing <mark>history</mark> which includes <mark>web mail</mark> such as Gmail</li>
        </ul>
    </td>
  </tr>
  <tr>
    <td>Email Folder</td>
    <td></td>
    <td>
        Windows 10
        <ul>
            <li><code>C:\Users\%UserName%\AppData\Local\Comms\Unistore\data\</code></li>
        </ul>
        Windows 11
        <ul>
            <li><code>C:\Users\%UserName%\AppData\Local\Microsoft\Windows Mail</code></li>
        </ul>
    </td>
    <td></td>
  </tr>
  <tr>
    <td>Recent Folder</td>
    <td></td>
    <td>
        <code>C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\Recent</code>
    </td>
    <td>
        <ul>
            <li>Contains <mark>links files</mark> that links to <mark>recently</mark> accessed files, folders and application</li>
        </ul>
    </td>
  </tr>
  <tr>
    <td>My Documents</td>
    <td></td>
    <td>
        <code>C:\Users\%UserName%\Documents</code>
    </td>
    <td>
        <ul>
            <li>Default location to store user-generated data</li>
        </ul>
    </td>
  </tr>
  <tr>
    <td>Sent To Folder </td>
    <td></td>
    <td>
        <code>C:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\SendTo</code>
    </td>
    <td>
        <ul>
            <li>When user right-click an object, and choose Send To, the options are contained in this file [<a href="#send-to-folder">Find Out More</a>]</li>
        </ul>
    </td>
  </tr>
  <tr>
    <td>Temp Folder</td>
    <td></td>
    <td>
        <code>C:\Users\%UserName%\AppData\Local\Temp</code>
    </td>
    <td>
        <ul>
            <li>Contains <mark>created by Windows</mark> while programs are <mark>running</mark> and different processes are taking place</li>
            <li>Usually are an exact match of files/file that is <mark>stored elsewhere</mark> in the computer or they are an exact duplicate that are waiting to be <mark>processed</mark></li>
        </ul>
    </td>
  </tr>
  <tr>
    <td>Desktop Folder</td>
    <td></td>
    <td>
        <code>C:\Users\%UserName%\Desktop</code>
    </td>
    <td>
        <ul>
            <li>Contains <mark>items and applications</mark> that are <mark>intentionally placed</mark> by the user or <mark>generated</mark> during installation</li>
            <li>All User Desktop Folder must be also <mark>evaluated</mark> as any items present can appear on the Desktop of a specific user</li>
        </ul>
    </td>
  </tr>
</tbody>
</table>

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
