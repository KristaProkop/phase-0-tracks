What are some of the key design philosophies of the Linux operating system?
- It assumes the user is computer literate from the beginning
- Unlike Windows it is not designed to prevent the user from screwing up
- Its key elements are simplicity, flexibilty, consistency, and openness.

In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
A VPS is a VM. It is like a "faux" server with its own OS of your choosing. You do not have to build a server yourself. Multiple VPS are run on one single server, but the VPS acts as if it were your own dedicated server. It allows all the benefits of a dedicated server for a smaller price. If you screw things up (which is totally do-able considering the Linux philosophies) you can start over again from scratch. 

Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
If you run as root there is the possibility that you'll completely blow up your system, either by self-inflicted wounds, a virus, or simple bugs in otherwise safe programs. Instead it's better to run it as a user, so if you do something very bad you will only ruin your home directory. 
