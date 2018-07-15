
if($args.count -eq 0){
    $myProject = read-host "Please enter a project name "
}
else{
    $myProject=$args[0]
}
#create a projet command line
mkdir $myProject
cd $myProject #create a angular application:
dotnet new angular
#create packges dotnet:
dotnet restore
#create the default package.json
#mv .\ClientApp\package-lock.json package.json
npm init -y
npm install
#launch visual studio
start "$myProject.csproj" 