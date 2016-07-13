# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
* What is a branch and why would you use one?
* What is a commit? What makes a good commit message?
* What is a merge conflict?

##What is version control?  Why is it useful?
Version control is a method of tracking changes to one or more files. At each change. Version control records changes at certain points in time between those points in time. Via tracking of all information related individuals changes made to a set of files, it creates a comprehensive record of the history of a given set of files.

Version control is useful for tracking the history of changes to a set of files, effectively a record of what changes were made when by whom. which helps answer questions about, for example, the evolution of bugs in the files, the time line of contributors, and what the set of files looked like at a certain point in time. 

##What is a branch and why would you use one?
A branch of a repository of files represents an independent path of development of the files in the repository (though it is not independent in the sense of a fork or separate copy of the files). In terms of version control, a branch is a separate path of changes to the repository. 

Branches are used so that file sets can be edited in manipulated in multiple ways at the same time while not creating conflicts. This gives maximum flexibility to the development process. For example, different features can be developed at the same time, or multiple implementations of the same feature can be created at the same time, all without having to worry about what the other branches are doing. 

##What is a commit? What makes a good commit message?
A commit is the recording a set of changes to a repository of files. In a sense it is an official addition to the tracking history of the repository, as the changes in the commit can be applied or undone at any time after the commit is made, and due to this can be called a "save point" for the repository. A commit requires one or more files added to the commit that have been changed since the last commit plus a text message about the commit.

A good commit message states the nature of and purpose for the changes to the repository since the last commit. It should neither omit critical information nor be overly verbose. 

##What is a merge conflict?
A merge conflict happens when attempting to merge two branches of the same code in which different sets have of changes have been made to the same specific lines in each branch. Git then does not know which change to apply to the merged code and needs to be told what should be in the final, merged set of files. Git handles merge conflicts by including changes from both files at the places where they disagree that are then edited manually by the user.