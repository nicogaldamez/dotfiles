highlight TestOk    ctermbg=green
highlight TestError ctermbg=red

syn match TestOk    "\<Ok:"
syn match TestError "\<Failure:"
syn match TestError "\<# Running:"

