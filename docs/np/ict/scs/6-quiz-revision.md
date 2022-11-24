# Quiz revision

This section will be on hardening Windows Server 2019, based on the Securing Windows Server 2019 series on LinkedIn Learning.

## Encrypting File System (EFS)

EFS is a feature of Windows that allows you to encrypt files and folders on a per-user basis. It is not a replacement for full disk encryption, but it can be used to protect sensitive files.

Files using EFS are encrypted using a secret key, then the secret key is individually encrypted using users' public keys, as well as the key of the EFS Recovery Agent.
