**Solutions for lecture 4 exercises [Data Wrangling](https://missing.csail.mit.edu/2020/data-wrangling/)** 
1. [RegexOne](https://regexone.com/)
2. `cat /usr/share/dict/words | grep "^.*a.*a.*a.*[^'][^s]$" | wc -l` outputs `2666`
- `cat /usr/share/dict/words | grep "^.*a.*a.*a.*[^'][^s]$" | sed -E 's/.*(..)$/\1/' | sort | uniq -c | sort -nk1,1 | tail -n3 | awk '{print $2}'` outputs `te`, `on`, `ly`
- `cat /usr/share/dict/words | grep "^.*a.*a.*a.*[^'][^s]$" | sed -E 's/.*(..)$/\1/' | sort | grep "te\|on\|ly" | wc -l` outputs `803`
- challenge: `cat /usr/share/dict/words | grep "^.*a.*a.*a.*[^'][^s]$" | sed -E 's/.*(..)$/\1/' | sort | grep -v "te\|on\|ly" | sort -u`
3. `sed -E -i` in-place substituion
4. I used `log show` on macOS, which seems to take a while to run
5. `curl -s https://stats.wikimedia.org/EN/TablesWikipediaZZ.htm | grep "desired pattern"` <- need more research on the extracted data sturcture so as to grep the desiered apttern



 
