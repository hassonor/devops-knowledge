### Video Analytics - MovieFlix

___

* `MovieFlix` is a company that allows you to watch TV Shows and Movies on demand. The business wants the following
  capabilities:
    * Make sure the user can resume the video where they left it off
    * Build a user profile in real time
    * Recommend the next show to the user in real time
    * Store all the data in analytics store

#### Video Analytics - MovieFlix - Comments

* `show_position topic`:
    * It is a topic that can have multiple producers
    * Should be highly distributed if high volume > 30 partitions
    * If I were to choose a key, I would choose `user_id`
* `recommendations topic`:
    * The kafka streams recommendation engine may source data from the analytical store for historical training
    * It may be a low-volume topic
    * If I were to choose a key, I would choose `user_id`