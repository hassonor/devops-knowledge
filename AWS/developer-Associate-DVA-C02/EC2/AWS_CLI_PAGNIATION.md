### AWS CLI Pagination

___

* You can control the number of items included in the output when you run a CLI command.
* By default, the AWS uses a page size of 1,000.
* i.e. if you run `aws s3api list-objects my_bucket` - on a bucket which contains 2,500 objects, the CLI actually makes
  3 API calls to S3... but displays the entire output in one go.

#### AWS CLI Pagination - Errors

* If you see errors when running list commands on a large number of resources, the default page size of 1,000 might be
  too high.
* You are most likely to see a "timed out" error, because the API call has exceeded the maximum allowed time to fetch
  the required results.

#### Fixing AWS CLI Pagination - Errors

1. To fix this, use the --page-size option to have the CLI request a smaller number of items from each API call.
2. The CLI still retrieves the full list, but performs a larger number of API calls in the background and retrieves a
   smaller number of items with each call.

* `aws s3api list-objects --bucket my-bucket --page-size 100`
* Use the `--max-items` option to return fewer items in the CLI output.
* `aws s3api list-objects --bucket my-bucket --max-items 100`

#### AWS CLI Pagination: Exam Tips

___

* `AWS CLI Pagination`
    * If you do see errors like "time out", or errors related to too may result being returned:
        * Adjust the pagination in of CLI results to avoid errors generated by too many results.
        * `aws s3api list-objects --bucket my-bucket-page-size 100`
    * The CLI still retrieves the full list, but performs a larger number of API calls in the background and retrieves a
      smaller number of items with each call.