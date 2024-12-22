## this is file
cd ~
mkdir git_started
cd git_started
mkdir -p .git/{objects,refs/heads}
echo "ref: refs/heads/main" > .git/HEAD
echo "HI I AM BLYAT" > hello.txt
git hash-object hello.txt -w
git update-index --add --cacheinfo 100644 17b86e70cceec14aabfa9c97da482d96929c9e24 hello.txt
git write-tree
git commit-tree 34e387dc793ec60d3d448534e255654ce476ab1e -m "greatest commit ever"
echo "dec479acda085a8936107b27fcddb845ff0d2cee" > .git/refs/heads/main
mkdir .git/refs/tags/
echo "dec479acda085a8936107b27fcddb845ff0d2cee" > .git/refs/tags/V1
