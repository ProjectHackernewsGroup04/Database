### Hackernews Database:
> Database repository is meant for initializing the database with entries for Items collection.

#### Import Initial Data for Items
```
vagrant@vagrant:/app$ sh database/testdata/import.sh
```
#### Database (MongoDB):
We chose to use MongoDB for the Hackernews Project. We have two collections representing the Users and Items.

##### Users
As of now, the users is structured like this:

```
{
  "username": "TestUser",
  "password": BinData(0, "JDJiJDEyJFFOOGZZWmFFMXNwN1FtNjIyUjBCVk85ajZscGtjeC9ELnFqLnZheTI2QkJsTWFMdm9jZTYy")
}
```

For future reference, we would like to add additional properties for the user that will hold details about the user like this:

```
{
  username ": "TestUser ",
  "password": BinData(0, "JDJiJDEyJFFOOGZZWmFFMXNwN1FtNjIyUjBCVk85ajZscGtjeC9ELnFqLnZheTI2QkJsTWFMdm9jZTYy")
  "about": "I am just a test user.",
  "created": 1173923446,
  "delay": 0,
  "karma": 2937,
  "submitted": [10,11,15] //items id
}
```

##### Items
Items can be identified either as a story or a comment, only depends on its "type" property. It is structured like this:

```
{
  "id": 0,
  "kids": [10, 14, 18, 33], //comments id
  "parent": -1, // a parent can be a story = -1, or a comment id
  "title": "Y Combinator",
  "deleted": false,
  "text": "",
  "descendants": 0,
  "parts": [],
  "dead": false,
  "by": "TestUser",
  "url": "http://ycombinator.com",
  "score": 5,
  "time": "1539214995",
  "poll": 232,
  "type": "story"
}
```
##### Database Model
![ER Diagram](https://github.com/ProjectHackernewsGroup04/Documentation/blob/master/images/ER.jpg)

_The user can have many items, both stories and items._
