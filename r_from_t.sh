#/bin/sh

if [ -z "$1" ]
then
    echo "Usage: r_from_t.sh [new_review_name] [book_title]."
    exit 1
fi

if [ -f $1.html ]; then
    echo "$1.html exists: please choose a different name."
    exit 1
fi

sed "s/Book/$2/g" < review_templ.html > $1.html
git add $1.html

