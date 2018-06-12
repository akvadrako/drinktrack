Beer-O-mat
==========

Setup:

    docker build -t beer .
    docker run --rm -itv beer:/home/db beer ./manage.py migrate
    docker run --rm -itv beer:/home/db beer ./manage.py createsuperuser \
        --username root --email ''

Run in production:

    docker run --rm -p 8000:8000 -v beer:/home/db beer

Development:

    docker run --rm -itp 8000:8000 -v beer:/home/db -v $PWD:/home beer

Admin:

    open http://localhost:8000/admin
