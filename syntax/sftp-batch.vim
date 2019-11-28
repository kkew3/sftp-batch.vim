if exists("b:current_syntax")
	finish
endif

syntax keyword sftpCmd get put reget reput rename ln rm mkdir chdir
syntax keyword sftpCmd ls lchdir chmod chown chgrp lpwd df symlink
syntax keyword sftpCmd lmkdir
highlight default link sftpCmd Statement

syntax match sftpOpt "[ \t]-[0-9a-zA-Z]\+\>"
syntax match sftpOpt "^-"
highlight default link sftpOpt Keyword

syntax region sftpPath start=+"+ skip=+\\"+ end=+"+
highlight default link sftpPath String

syntax match sftpComment "^#.*"
highlight default link sftpComment Comment

syntax match sftpErr "^--\+"
syntax match sftpErr "^-\s*$"
highlight default link sftpErr Error

let b:current_syntax = "sftp-batch"
