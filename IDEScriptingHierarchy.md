Dump of initial email, RB has since been enhanced a bit
I'm a bit confused as to whether IDE Scripts are actually capable of traversing the project tree.

A simple script using Sublocations yields a FLATTENED list of "all items in the project"
Clipboard = Sublocations("")

The Language Reference says
"
Returns all the locations within the given base
location as a tab-delimited String (Chrb(9). In
older versions, it was a space-delimited String.
Since locations can have embedded spaces, the
delimiter was changed to the ChrB(9).
For example, if baseLocation is "App", then this
might return “App.Activate App.CancelClose
App.Close” (and so on). The set of locations
returned should be the same ones suggested by
autocompletion in the Location field within the
IDE. If baseLocation is an empty string, then this
returns the set of project items in the frontmost
project.
"

From seeing folders returned in my initial tests, I'd assumed a folder was a "location".

It seems that a folder is a leaf location - you get it back but not its contents (this explains some of the other confusion I experienced with my tree-walking code).

So, for the ReportTester project, where I have a folder Blocks returned from Sublocations("") I will get an empty list returned if I do Sublocations("Blocks").

Is this the intended behaviour or have I stumbled over a bug? It is a bit hard to tell from the documentation.

Consider someone iterating through a project tree.

If you get back a flattened list, with no ability to iterate through items within the folders, then a tree can't be deduced. This prevents graphical output to match the nested folders, generating documentation that matches folder grouping or trying to deduce VCP location on disk.

If you get back a flattened list which also allows iteration through items in folders, then you are going to encounter classes twice - as top-level flattened list members and again as you iterate within a folder.

There's no Dictionary object available within an RBScript so you can't use one to determine what's been hit so far (I shudder a bit at the thought of using arrays with linear searches although it would work).

I may have really misunderstood things but I suspect there are a few missing pieces:
1) the ability to determine the type of a "location", especially distinguishing folders
2) Sublocations("folderName") returning the contents of a folder
3) an alternate Sublocations("/') or some other root specifier which only gets the top-level items in the project, so you can do hierarchical traversal.

My current heuristic for determining if something is a folder is a bit awkward:
if location has no contents and the location name doesn't contain a period then it is a folder

This still of course doesn't get a hierarchy and incorrectly identifies pictures as being folders, eg:
```
' lists all folders

' if not already inside a class or module (period in name) and nothing inside us
' assume we are a folder but incorrectly also picks up pictures
Function IsFolder(location as String) as Boolean
	if location.Instr(".") > 0 then return False
	return len( Sublocations(location) ) = 0
End Function

dim outMsg as string
dim subs() as string = Split( Sublocations(""), Chr(9) )
dim i as integer
for i = 0 to ubound(subs)
	if isFolder( subs(i) ) then
		outMsg = outMsg + subs(i) + chr(13) + chr(10)
	end if
next
Clipboard = outMsg
Beep
```