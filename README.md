### libuv hello world webserver

An hello-world webserver in C using [libuv][libuv] and
[http-parser][http-parser] based on [Ryan Dahl's tutorial][tutorial] and
[updated][gist] to make it work with the most recent libuv API.

[libuv]: https://github.com/joyent/libuv
[http-parser]: https://github.com/joyent/http-parser
[tutorial]: http://vimeo.com/24713213
[gist]: https://gist.github.com/1195428

Build it

    git submodule update --init
    cd libuv/; git pull origin master; cd ..;
    cd http-parser/; git pull origin master; cd ..;
    make

Run it

    ./webserver &
    curl localhost:8000

Stress-test it

    ab -n 5000 -c 500 http://127.0.0.1:8000/
