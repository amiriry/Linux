mkdir myrepo
cd myrepo

git init .
cat <<EOF > file1
This file is the first file that I am going to add to my git repo
This file doesn't contain anything, its not important
here are changes in this file
its just and example that you can write
full files into the repo
Now you know what files you have, you don't have to add them line by line
EOF

git add file1
git commit -m "changes in file 1"

cat <<EOF > file2
This mark - EOF in this context is really end of a file.
I just want to write files in one scrip. This is 
going to write the second file - filemeup.
Just know that this is the way to write full files in very logical context
EOF

git add file2
git commit -m "This is the second file"

sed -i "/This file doesn't contain anything/ a/There are changes in file1/" file1
git add file1
git commit -m "addition of ilnes in file1"

sed -i "/going to write the second file - filemeup/ s/write/wrong/" file2
git add file2
git commit -m "change the content of a line"

echo "this is a new line in the end of file1" > file1
git add file1
git commit -m "add line to the end of file1 with redirection"

# Here you can go on and on with addition, removal or editing a line
# using sed, using echo with redirection and so on
