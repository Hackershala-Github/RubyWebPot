# RubyWebPot

`RubyWebPot` brings the monitoring ports in the network and alert the invaders.

## Requirements
`ruby`

## How to use

1. Clone the project.

2. Run the file `pentbox.rb` in path honey.
Note: if necessary run with the sudoers permission.

3. Set the configuration, example:
Choice the first option (1 - Honeypot)
```console
 $ ruby pentbox.rb
                                     .::!!!!!!!:.
  .!!!!!:.                        .:!!!!!!!!!!!!
  ~~~~!!!!!!.                 .:!!!!!!!!!UWWW$$$
      :$$NWX!!:           .:!!!!!!XUWW$$$$$$$$$P
      $$$$$##WX!:      .<!!!!UW$$$$   $$$$$$$$#
      $$$$$  $$$UX   :!!UW$$$$$$$$$   4$$$$$*
      ^$$$B  $$$$      $$$$$$$$$$$$   d$$R*
        **$bd$$$$      '*$$$$$$$$$$$o+#
             ****          *******

1- Honeypot

0- Exit

   -> 1
```

4. Choice the manual configuration if you don't have the ruby installation in your user root or you haven't permissions like sudoers.
```console
// Honeypot //

You must run PenTBox with root privileges.

 Select option.

1- Fast Auto Configuration
2- Manual Configuration [Advanced Users, more options]

   -> 2
```

5. Next, set what port you want to open to monitoring.
```console
 Insert port to Open.

   -> 3000
```

6. Set the false message you want to show
```console
 Insert false message to show.

   -> Alert false message example

```

7. If you want save logs set the option "y".
```console
 Save a log with intrusions?

 (y/n)   -> y
```

8. If you choice the "y" upward and you want to change the file path, set the new path:
```console
 Log file name? (incremental)

Default: */pentbox/other/log_honeypot.txt

   -> /home/example/honeypot.txt
```

9. If you want to listen sound alarm, set the option "y":
```
 Activate beep() sound when intrusion?

 (y/n)   -> y
```

10. Now, your HONEYPOT're confirated with successful, you'll receive this message:
```console
  HONEYPOT ACTIVATED ON PORT 3000 (2020-10-13 21:47:04 -0300)
```

## Usage
We need to open the browser and conect that port we did set in the configuration, or you could use another softwares to make the test, for example `curl`:
```console
 $ curl -X GET localhost:3000
```

The return will be like this:
`Alert false message example%`

And the log file like this:
```console
  INTRUSION ATTEMPT DETECTED! from 127.0.0.1:56504 (2020-10-13 21:51:11 -0300)
 -----------------------------
GET / HTTP/1.1
Host: localhost:3000
User-Agent: curl/7.64.0
Accept: */*
```
