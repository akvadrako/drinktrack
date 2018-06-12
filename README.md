Beer-O-mat
==========

Setup:

    docker build -t beer .
    docker run -itv beer:/home/db beer ./manage.py migrate
    docker run -itv beer:/home/db beer ./manage.py createsuperuser \
        --username root --email ''

Run in production:

    docker run -p 8000:8000 -v beer:/home/db beer

Development:

    docker run -itp 8000:8000 -v beer:/home/db -v $PWD:/home beer

Admin:

    open http://localhost:8000/admin