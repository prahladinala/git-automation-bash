#! /bin/bash 

prahlad(){
    echo ""
    echo "██████╗ ██████╗  █████╗ ██╗  ██╗██╗      █████╗ ██████╗ 
██╔══██╗██╔══██╗██╔══██╗██║  ██║██║     ██╔══██╗██╔══██╗
██████╔╝██████╔╝███████║███████║██║     ███████║██║  ██║
██╔═══╝ ██╔══██╗██╔══██║██╔══██║██║     ██╔══██║██║  ██║
██║     ██║  ██║██║  ██║██║  ██║███████╗██║  ██║██████╔╝
╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═════╝ "
echo ""
} 
prahlad
thankyou(){
    echo ""
    echo "████████╗██╗  ██╗ █████╗ ███╗   ██╗██╗  ██╗    ██╗   ██╗ ██████╗ ██╗   ██╗
╚══██╔══╝██║  ██║██╔══██╗████╗  ██║██║ ██╔╝    ╚██╗ ██╔╝██╔═══██╗██║   ██║
   ██║   ███████║███████║██╔██╗ ██║█████╔╝      ╚████╔╝ ██║   ██║██║   ██║
   ██║   ██╔══██║██╔══██║██║╚██╗██║██╔═██╗       ╚██╔╝  ██║   ██║██║   ██║
   ██║   ██║  ██║██║  ██║██║ ╚████║██║  ██╗       ██║   ╚██████╔╝╚██████╔╝
   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝       ╚═╝    ╚═════╝  ╚═════╝"
   echo ""
    echo "Thank you for using this script"
    echo "Please visit https://prahladinala.in for my Portfolio"
    echo "Please visit https://toolmate.co.in for more such tools"
    echo "Please follow me on Twitter https://twitter.com/prahladinala"
    echo "Please follow me on Instagram https://instagram.com/prahladinala"
    echo "Please follow me on LinkedIn https://linkedin.com/in/prahladinala"
    echo "Please follow me on GitHub https://github.com/prahladinala"
}
echo "################# WELCOMES YOU TO GIT SETUP WIZARD #################"

echo "Do You Already Setup Git? (y/n)"
read -p '(Y/N): ' gitSetup

myGitSetup () {
    echo "Enter Your Name: "
    read -p '(Name): ' name
    echo "Enter Your Email: "
    read -p '(Email): ' email
    git config --global user.name $name
    git config --global user.email $email
    echo "Git Setup Complete!"
}
myGitCommitQ(){
    echo "
[1] Create a sample ReadMe.md file
[2] Commit all the changes to Git
[3] Push Code to Remote Git
[4] Commit all changes and Push Code to Remote Git
[5] Commit only particular files to Git
[6] Commit only particular files and Push Code to Remote Git?
[7] Exit
    "
    read -p '(Please Enter Your Choice): ' gitCommitQ
    if [ $gitCommitQ == "1" ]; then
        myGitReadMe
    elif [ $gitCommitQ == "2" ]; then
        myGitCommitAll
        myGitCommitQ
    elif [ $gitCommitQ == "3" ]; then
        myGitPush
        myGitCommitQ
    elif [ $gitCommitQ == "4" ]; then
        myGitCommitAll
        myGitPush
        myGitCommitQ
    elif [ $gitCommitQ == "5" ]; then
        myGitCommitParticular
        myGitCommitQ
    elif [ $gitCommitQ == "6" ]; then
        myGitCommitParticular
        myGitPush
        myGitCommitQ
    elif [ $gitCommitQ == "7" ]; then
        thankyou
        exit
    else
        echo "Invalid Choice!"
        myGitCommitQ
    fi
}
myGitCommitAll(){
    echo "Enter Commit Message: "
    read -p '(Commit Message): ' commitMessage
    git add .
    git commit -m "$commitMessage"
    echo "Commit Successful!"
}
myGitPush(){
    echo "Enter Remote Git URL: "
    read -p '(Remote Git URL): ' remoteGitURL
    git remote add origin $remoteGitURL
    git push -u origin master
    echo "Push Successful!"
}
myGitCommitParticular(){
    echo "Enter Commit Message: "
    read -p '(Commit Message): ' commitMessage
    echo "Enter File Name: "
    read -p '(File Name): ' fileName
    git add $fileName
    git commit -m "$commitMessage"
    echo "Commit Successful!"
}
myGitReadMe(){
    echo "Creating a sample ReadMe.md file"
    touch ReadMe.md
    echo "
![Banner By Prahlad Inala](https://prahladinala.in/img/others/gitcommiter.png)

# Project Name

This Readme File is generate by Prahlad Inala

# Hi, I'm Prahlad Inala! 👋

## 🚀 About Me

I'm a full stack developer...

## Other Common Github Profile Sections

👩‍💻 I'm currently working on...

🧠 I'm currently learning...

👯‍♀️ I'm looking to collaborate on...

🤔 I'm looking for help with...

💬 Ask me about...

📫 How to reach me...

😄 Pronouns...

⚡️ Fun fact...

## 🛠 Skills

Javascript, HTML, CSS...

## 💻 Tech Stack

**Client:** React, Redux, TailwindCSS

**Server:** Node, Express

## Screenshots

![App Screenshot](https://via.placeholder.com/468x300?text=App+Screenshot+Here)

## 🔗 Links

[![portfolio](https://img.shields.io/badge/my_portfolio-000?style=for-the-badge&logo=ko-fi&logoColor=white)](https://prahladinala.in/)
[![linkedin](https://img.shields.io/badge/linkedin-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/prahladinala/)
[![twitter](https://img.shields.io/badge/twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/prahladinala)

    "  >> ReadMe.md
    echo "ReadMe.md file created!"
    myGitCommitQ
}
myGitRepoQ(){
    echo "
[1] Create A New Git Repo
[2] Clone A Git Repo
[3] Initalize Git Current Directory
[4] Exit
    "
    read -p '(Please Enter Your Choice): ' gitRepoQ
    if [ $gitRepoQ == "1" ]; then
        myNewGitRepo
        myGitCommitQ
    elif [ $gitRepoQ == "2" ]; then
        myCloneGitRepo
        myGitCommitQ
    elif [ $gitRepoQ == "3" ]; then
        myInitGitRepo
        myGitCommitQ
    elif [ $gitRepoQ == "4" ]; then
        thankyou
        exit
    else
        echo "Invalid Choice!"
        myGitRepoQ
    fi
}
myCloneGitRepo(){
    echo "Enter Your Git Repo URL: "
    read -p '(Git URL): ' gitRepoURL
    git clone $gitRepoURL
    echo "Git Repo Cloned!"
}
myInitGitRepo(){
    git init
    echo "Git Repo Initialized!"
}
myNewGitRepo(){
    echo "Enter Your Repo Name: "
    read -p '(Repo Name): ' repoName
    git init $repoName
    echo "Git Repo Created!"
}
# IF GIT IS NOT SETUP
if [ $gitSetup == "n" ]; then
    myGitSetup
    myGitRepoQ

elif [ $gitSetup == "N" ]; then
    myGitSetup
    myGitRepoQ

# IF GIT IS ALREADY SETUP
elif [ $gitSetup == "y" ]; then
    echo "Git Already Setup!"
    myGitRepoQ

elif [ $gitSetup == "Y" ]; then
    echo "Git Already Setup!"
    myGitRepoQ
# IF USER ENTERS INVALID INPUT
else
    echo "Invalid Input!"
fi
