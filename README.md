
# My Arch Scripts

Repository with custom scripts that have proven useful at some point. Feel free to edit or add more scripts to this repository.


## Scripts Reference

### deleteAll.sh

 Delete all files with a specific extension

```
  ./deleteAll.sh /path_to_the_directory/ extension
```
| Parameter |  Description                |
| :-------- |  :------------------------- |
| `path_to_the_directory` | Path to the files with the extension you want to delete |
| `extension` |  Extension you want to delete |

 Example:

```
  ./deleteAll.sh ~/Desktop txt
```


### renameAll.sh

 Renames all files in a directory

```
  ./renameAll.sh /path_to_the_directory/ new_name
```
| Parameter |  Description                |
| :-------- |  :------------------------- |
| `path_to_the_directory` | Path to the directory with the files you want to rename |
| `new_name` | New name of the files |

 Example:

```
  ./renameAll.sh ~/Pictures photo
```
### fastCloneCode.sh

 Clones a repository, goes to the project directory and opens it with lunar vim
  * git required

```
  ./fastCloneCode.sh project.git ~/path_to_the_directory
```
| Parameter |  Description                |
| :-------- |  :------------------------- |
| `project` | Repository that will be cloned |
| `path_to_the_directory` | Path to where the directory will be downloaded |

 Example:

```http
  ./fastCloneCode.sh https://github.com/MoonDusk1996/my_custom_scripts.git ~/Projects
```
