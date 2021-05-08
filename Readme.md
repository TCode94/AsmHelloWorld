This is an asm Hello World program for x64 windows
The hard part was to figure out how to write/print to std_out on windows

Well, you need to know in which library the necessary functions are you want to use
they are in kernel32.lib kernel32.dll

Microsoft documentation is really helpful for this purpose.
ok once you did understand that you have to go there to know the details for such things
and you learned the right keywords to search for.
If you search for a asm Hello World programm for windows on google you hardly find anything useful unfortunately 😔

Then it was also complicated to figure out how to get linking to kernel32 done rightly

here is one solution if you are using the windows linker link.exe
i think you can only summon him from the developer command prompt
you also need to use the x64 version of the developer command prompt if your
obj file which you assenbled is a for a 64-bit programm

☀️
link /entry:<the entry point to your program like main actually> /subsystem:console /out:<your favorite name for your programm> <your src file/s> kernel32.lib
voila!


# subsystem = console so windows knows that it should std handles to the process
and start a console window ect.

#easy part
assembling with nasm

nasm -f win64 -o <your favorite name for the object file> <src file>
