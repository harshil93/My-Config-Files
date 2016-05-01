function Git-Status(){
	git status
}

function Git-Log(){
	git log
}

function Git-Add($path){
	if($path -or $path -eq ''){
		git add -u
	}else{
		git add $path
	}
}

function LastCommitID(){
	git log --format="%H" -n 1 | clip.exe
}

function Git-CurrentBranch(){
	$(git rev-parse --abbrev-ref HEAD) | clip.exe
}

function Git-Log-Graph(){
	git log --oneline --graph
}

New-Alias gil Git-Log
New-Alias gilg Git-Log-Graph
New-Alias gis Git-Status
New-Alias gia Git-Add
New-Alias glci LastCommitID
New-Alias gcbr Git-CurrentBranch