# Windows Artifacts

!!! warning "Work in Progress"

## Default Path for System and User Profile Folder

!!! tip "Folder Structure"
    Important for examiners to be familiar with the operating system artifacts and their default locations for each versions

| Operating System     | Default System Folder | User Profile Folders        |
|----------------------|-----------------------|-----------------------------|
| Windows 2000         | `C:\WINNT`            | `C:\Documents and Settings` |
| Windows XP           | `C:\Windows`          | `C:\Documents and Settings` |
| Windows Vista/7/8/10 | `C:\Windows`          | `C:\Users`                  |

## Important Folders

| Folder      | Subfolders/files                                                                                      | Path                                     | Description                                                                                                                                                                                                                                                                                                                                         |
|-------------|-------------------------------------------------------------------------------------------------------|------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Root        | Application Data <br/> Cookies <br/> Desktop <br/> Favorites <br/> Etc.<br/> [NTUSER.DAT](#ntuserdat) |                                          | Named after the user's login name                                                                                                                                                                                                                                                                                                                   |
| Recycle Bin | Windows Vista/7/8/10 <br/> `$I<number>.<original extension>` <br/> `$R<number>.<original extension>`  | `C:\Users\%UserName%\$RECYCLE.BIN\<SID>` | Files deleted will be sent to the Recycle Bin <br/><br/> Windows 2000/XP <br/> The deleted files are stored in a hidden file called [INFO2]("Contains original file name and path, date and time of deletion") <br/><br/> Windows Vista/7/8/10 <br/> Individual index files begin with `$I` <br/> Deleted file name is renamed and begins with `$R` |

### NTUSER.DAT
 - Every user profile has an NTUSER.DAT file
 - It is a registry file
 - Updated by the OS once the user logs out
 - Last written time can be used to pin point user last log out time
 - Requires registry viewer to view the contents
