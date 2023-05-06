### Redis Data Types
* Strings
* Lists 
* Sets
* Hashes
* Sorted Sets

#### List - Common Methods

* `LPUSH` - Prepends one or multiple values to a list
* `LRANGE` - Gets a range of elements from a list
* `LINDEX` - Gets an element from a list by its index
* `LLEN` - Gets the length of a list
* `LREM` - Removes elements from a list
* `LSET` - Sets the value of an element in a list by its index
* `RPUSH` - Appends one or multiple values to a list

#### Sorted Sets - Common Methods
* `ZADD` - Adds one or more members to a sorted set
* `ZCARD` - Gets the number of members in a sorted set
* `ZCOUNT` - Returns the number of elements in the sorted set with a score between min and max.
* `ZRANGE` - Returns a range of members in a sorted set
* `ZREM` - Removes one or more members from a sorted set

#### Hashes - Common Methods
* `HSET` - Sets the string value of a hash field
* `HGET` - Gets the value of a hash field stored at the specified key
* `HGETALL` - Gets all the fields and values stored in a hash at the specified key
* `HINCRBY` - Increments the number stored at field in the hash stored
* `HMGET` - Returns the values associated with the specified fields in the hash stored at key