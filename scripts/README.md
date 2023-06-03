# Docker

### Install Docker

## Scripts

#### comparer.sh
Give the script Strings in a list and it will compare all of them<br>
Example:<br>
`comparer.sh myfirststring myfirststring myfirststring`<br>
Will be true, while<br>
`comparer.sh myfirststring myfirststring myfirststring anotherstring`<br>
Will get false<br>

#### reclick.sh
need to install `xdo-tool`<br>
Choose a place in the screen where you want to click multiple times.<br>
Choose the dely between clicks (in seconds)<br>
The script will reclick the place you picked in delays and will bring the mouse back to where it was, should not interfere your work.<br>

#### create_git_repo.sh
Creating files in multiple ways, just to show how you can manipulate files from the command line, and create a repo in a script.sh<br>
Use of multiline editing with `herestrings` - EOF in this case<br>
Use sed in multiple ways<br>
`a` - addition - add line after the line that sed finds<br>
`i` - insert - add line instead of the line found, push the line found one line under<br>
`s` - switch - change the content that is found by the content in the secon //&lt;this>/<br>

