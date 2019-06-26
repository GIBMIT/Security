# PW Vulnerability

## Disclaimer
This is a poc demonstrating why you shouldn't use any important credentials to lock your gibm computer.
I take NO responsibility for any damage caused by the usage of this script.
Only use it on your own account and/or with consent.

## Description/Root Cause
GIBMIT stores your passwords insecurely.
Normally passwords on linux are stored hashed and only accessable by the root user under /etc/shadow.
GIBM stores them encoded on their filesystem (maybe to provide some custom single sign on?).
The passwords can be retrieved in plaintext by the logged in user and possibly by an administrator.
Also HID attacks could be used to extract the passwords in a quick second, without you noticing it.

## Am I affected?
Every account at GIBMIT is affected, students and teachers alike.

## Mitigations for you
- Don't reuse passwords, use a throwaway one!
- Lock your computer, not just your VM!

## A word about responsible disclosure.
The vulnerability has been reported on 06.02.2017 to the principal office and several teachers.
Current responsible disclosure policies define to keep a vulnerability private between 90 and 120 days after notifying the vendor.
Since there's no fix for over a year, this has become a matter of public interest, so you can protect yourself.
Again, I take no responsibility for your actions.