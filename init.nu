const merged_name = "LQR471814.goggle"

let now = date now

let age = ((ls -l copycats_removal.goggle | get -o 0.modified) - $now)
if $age > 1day {
  http get https://raw.githubusercontent.com/brave/goggles-quickstart/main/goggles/copycats_removal.goggle
  | save -f copycats_removal.goggle
}

ls *.goggle
| where $it.name != $merged_name
| each { open $in.name }
| str join "\n"
| save -f $merged_name
