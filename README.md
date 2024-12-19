# suppress_redirection_to_cursor

Prevents redirection to 'Cursor' by the 'code' command

## Overview

The Cursor editor is very useful, but sometimes you want to go back to VS Code.

However, if you have both Cursor and VS Code installed, when you open it with the `code` command, you may be redirected to the `Cursor` editor due to path priority.

These shells suppress that redirection.

## How it works

The content is very simple.
By changing the file name corresponding to the `code` command in Cursor to `_code`, redirection is suppressed.

The installation destination of this 'code' command is as follows depending on the environment. .

### Installation location on Windows

- `%USERPROFILE%\AppData\Local\Programs\cursor\resources\app\bin\code.cmd`

### Installation location on Windows (file for redirection from WSL)

- `%USERPROFILE%\AppData\Local\Programs\cursor\resources\app\bin\code`
- `mnt/c/Users/username/AppData/Local/Programs/cursor/resources/app/bin/code`

### macOS

This problem does not occur if you install with HomeBrew.

This is because they are installed in the following locations and do not conflict with each other.

- `/opt/homebrew/bin/code`

- `/opt/homebrew/bin/cursor`
