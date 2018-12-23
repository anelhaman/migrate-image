
# Migrate-image

TL;DR

Just run migrate to pull image from list

```
migrate %s,%s,%s [BU][URL] [FileList] [Round]
```


### [BU]
You have to describe your BU code.
```
ABC
```

### [URL]
Should be input URL from CDN. if put real path from yours, might create high traffic unnecessary.
```https://cdn1.cloudflare.com/image/cat/```

### [FileList]
Prepare your image list and export to file (like csv).
```
content.csv
sku
00023
00024
00025
```

### [Round]
This script works on 2 kind 
- run batch1: check your URL image level 1. if image URL have exist, it would list to new file `found/image.csv`. in this case you can ignore to input round argument
- run batch2: check your URL image level 2. after we run batch1 then we would have validate data that make your list of exist image URL. so in this step you need to describe how many loops you need to run recursively pull image.
just put 
5 
if you need to find 5 rounds.

```
should be 3 to 10
```

# Extra 

We can pull image and rename as same time use migrate_rename

```
migrate_rename %s,%s,%s [BU][URL] [FileList] [Round_start] [Round_end]
```

### [BU]
```
ABC
```

### [URL]
```
https://cdn1.cloudflare.com/image/cat/
```

### [FileList]
From early step please make sure you added new column to rename your image in SKU list file.
```
content.csv
pid    sku-to-rename
00023  BUA001
00024  BU1009
00025  BUC223
```

### [Round]
This script works on 2 kind 
- run batch1: check your URL image level 1. if image URL have exist, it would list to new file `found/image.csv`. in this case you can ignore to input round argument
- run batch2: same same but diffirent you need to input 2 argument; start from and end to such as 
start 5 
end 10
5 10

```
should be 3 to 10
```