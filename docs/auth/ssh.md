# ssh

## Generating the key pair

Generate an SSH key by typing the following command into the terminal, replacing the email with your own.
```
ssh-keygen -t ed25519 -C "email@example.com"
```
You should see the following lines with some different filepath in the parentheses.
```
Generating public/private ed25519 key pair.
Enter file in which to save the key (/example/filepath/.ssh/id_ed25519):
```
The filepath in the parentheses probably looks like `/home/username/.ssh/id_ed25519`.
You can accept the default filepath or enter a different one.

Next, you should see the following lines with some different filepath.
```
Created directory '/home/username/.ssh'.
Enter passphrase (empty for no passphrase):
```
Enter a passphrase if you would like, and enter it again for the next prompt.
The lines after that are not very important.

## Using the key pair

Get the public key with the following command, changing the filepath to whatever was in the parentheses earlier or the filepath you chose. Note the `.pub` at the end.
```
cat /home/username/.ssh/id_ed25519.pub
```
The result should start with `ssh-ed25519`, end with the email you entered, and contain an alphanumeric string of data. Copy the entire result for the next step.

Go to https://github.com/settings/keys and click the option to add a new SSH key.
Enter any title, paste your key into the textbox, and add the key.
