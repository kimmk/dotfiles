return {
{
  "junegunn/fzf",
},
{
  "junegunn/fzf.vim",
  requires = {
    "junegunn/fzf",
    run = ":call fzf#install()",
  }
},
}
