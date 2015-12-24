--

return {
    lockfile = "fcgi.lock",
    zmq = {
        max_sockets = 65536,
        ipv6_enabled = true,
    },
    listeners = {
        {
            code = "src/threads/acceptor.lua",
            addr = "tcp://::1:12345",
        },
        {
            code = "src/threads/acceptor.lua",
            addr = "tcp://127.0.0.1:12345",
        },
        {
            code = "src/threads/acceptor.lua",
            addr = "ipc:///home/pd/src/lua-fcgi/fcgi.sock",
        },
    },
    workers = {
        code = "src/threads/worker.lua",
        amount = 4,
    },
}
