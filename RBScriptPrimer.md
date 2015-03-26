## RBScript Overview ##
For those unfamiliar with RBScript, it provides a cut-down version of the REALbasic language, within your program. The basic non-object data types are available within a script plus:
  1. any classes you define inside the script - you can do as complex an OO script as you like
  1. public methods and properties of the _context object_ passed into the script appear as global functions and variables to the script

Whilst you can therefore communicate with the context object by calling its methods, you can only pass primitive types across as parameters - this is a _sandbox_ for your safety.

More details are available in the Language Reference available from the [RealSoftware Download page](http://www.realsoftware.com/download/), the exact URL varying for each release, currently [2009r2](http://realsoftware.cachefly.net/REALbasic2009r2/LanguageReference.pdf)

## Complex Script Architecture ##
There are two techniques to building complex programs that use RBScript. The classical one, used by several commercial programs, is to prepend your own classes to the text that the user ends. You might have several thousand lines of class definitions to be parsed at the head of the script but this gives the user a very rich world in which they can live and even program in a completely OO manner.

Another approach is to use many scripts which effectively communicate via the context object (I OK'd this with Mars at RealWorld 2008 after my own experiments proved robust). If you want to keep your individual scripts simple but have many cooperating entities, not necessarily purely objects, this is a good way to go. It does require you to have more than one RBScript object active at a time so lends itself better to creating the RBScript objects dynamically in code rather than having them as invisible controls on a window.