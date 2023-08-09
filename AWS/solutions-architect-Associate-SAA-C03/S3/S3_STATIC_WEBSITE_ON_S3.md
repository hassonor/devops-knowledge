#### You can use S3 to host static websites, suck as .html sites.
**Dynamic** websites, such as those that require **database connections**, cannot be hosted on S3.

#### S3 Scales Automatically
**S3 scales automatically to meet demand**. Many enterprise will put static websites on S3 when they think there is going to be 
a large number of requests (e.g.,for a movie preview).

#### Hot to Host static website on S3:
1. Go to Create bucket page.
2. Write Bucket unique name
3. Uncheck `Block all public access`
4. Check `I acknowlege...`
5. Click `Create`
6. Press on the new bucket
7. Go to `Properties`
8. Scroll to bottom and press `Edit` on `Static website hosting` section.
9. Press on `Enable` button for Static website hosting option
10. Write `index.html` on `index document`
11. Write `error.html` on `error document`
12. Press `Save Pages`
13. Go to `Objects` Tab.
14. Press `Upload`
15. Choose `Add files` and choose both `index.html` and `error.html` files.
16. Press `Upload`
17. Press on `Exit`
18. Go to `Permissions` of the bucket.
19. Edit the `Bucket Policy`
20. Put Json for `PublicReadGetObject` for the bucket - Don't forget update to your Bucket ARN :).
21. Press `Save changes`
22. Done.

### Exam Tips: What to Know for the Exam
* **Bucket Policies**: Make entire buckets public using bucket policies.
* **Static Content**: Use S3 to host **static** content only (not **dynamic**)
* **Automatic Scaling**: S3 scales automatically with demand.