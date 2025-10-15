# ZVX118Z_fortran_homework


## Git push using bash


1. Create a new repository
2. Navigate to Your Local Project
  - Open terminal
  - navigate to the desired directory that you want to upload
3. Initialize Git in Your Local Project
  - git init
  - git status (check if some files are already added and if git was initialised properly)
4. Add file to local branch
  - git add . (add all files) (if need to upload specific file replace . -> filename)
  - again check git status to see if all files are ready to be commited
5. Commit changes 
  - git commit -m "Initial commit" (can write any remark of description here) (for instance, fixing bug etc) (helps to keep track of commits and why they were made)

6. link local repo to github
  - git remote add origin https://github.com/username/repository-name.git (find it in code(top right of the repo))
7. Push local project to github
  - git push -u origin main
    - sets the default upstream repository.
    - origin is the default name of your remote repository.
    - main is the name of the default branch in Git (in newer versions, this could be master).
   
8. username :
   password : personal access token(classic) (check on repo box)
