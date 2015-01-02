redis-server Cookbook
=====================

Installs/Configures redis-server

Usage
-----
#### redis-server::default

e.g.
Just include `redis-server` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[redis-server]"
  ]
}
```

Contributing
------------
1. Fork it (https://github.com/vigosan/redis-server)
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request
