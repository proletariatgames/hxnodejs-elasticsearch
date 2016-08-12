# Haxe/hxnodejs externs for the [elasticsearch](https://www.npmjs.com/package/elasticsearch) npm library

Tested using `elasticsearch` version **11.0.1**

Example:
```haxe
import js.npm.elasticsearch.Client;

var client = new Client({
  host: 'localhost:9200',
  log: 'trace'
});

client.ping({
  requestTimeout: Math.POSITIVE_INFINITY,
}, function(error) {
  if (error != null) {
    trace('elasticsearch cluster is down');
  } else {
    trace('All is well');
  }
});
```
