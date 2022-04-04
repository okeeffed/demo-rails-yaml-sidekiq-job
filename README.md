# README

## Steps taken

1. Followed [previous blog post](https://blog.dennisokeeffe.com/blog/series/50-days-of-ruby).
2. Added the YAML templates folder.
3. Added the template.
4. Created a `Person` model. Migrate.
5. Updated the Jobs controller.
6. `bin/dev` to start.
7. Run `http POST localhost:5000/jobs template_group=yaml template_name=basic`

## Sending the request

```s
$ http POST localhost:5000/jobs template_group=yaml template_name=basic
HTTP/1.1 202 Accepted
Cache-Control: no-store, must-revalidate, private, max-age=0
Content-Type: application/json; charset=utf-8
Referrer-Policy: strict-origin-when-cross-origin
Set-Cookie: __profilin=p%3Dt; path=/; HttpOnly; SameSite=Lax
Transfer-Encoding: chunked
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-MiniProfiler-Ids: w5qbp38e6xytn2a1g5kt,d6mr3lsmk8e4i8i4o6ad,ve2sy6fpwhycw1bhi8m,pk199otp1pemditsz172,zij0sg8ruw8c350s4zrd,2fu1c028w4h8j1fg8eqn,sql5jajpv0iu7zoe9z2n,lqtxoxkso0p3s9udy24i,p74qirfir3xmhhiyo31,l2h57dj2hn4g,tokv1ogolv1vcj0fxnmd,szathvf0vaxo6glg9ruw,61hri8h3fo74jhwsolez,8mt3s6max4sdgylleub4,g43fqs7faec3hts96g7e,iwfy35nvml9fbsaqzqcp,qk6mrujh9gjdg291hfjg
X-MiniProfiler-Original-Cache-Control: no-cache
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: f411f617-48eb-45e4-87d8-b48976cd121d
X-Runtime: 0.045609
X-XSS-Protection: 1; mode=block

{
    "message": "Accepted"
}
```

## Console

```s
$ rails c
irb(main):001:0> Person.all
   (1.1ms)  SELECT sqlite_version(*)
  Person Load (0.2ms)  SELECT "people".* FROM "people"
=>
[#<Person:0x00007f7c89e220b8
  id: 1,
  name: "John Doe",
  age: 30,
  created_at: Mon, 04 Apr 2022 10:33:34.031843000 UTC +00:00,
  updated_at: Mon, 04 Apr 2022 10:33:34.031843000 UTC +00:00>,
 #<Person:0x00007f7c89e51b10
  id: 2,
  name: "Jane Doe",
  age: 25,
  created_at: Mon, 04 Apr 2022 10:33:34.036244000 UTC +00:00,
  updated_at: Mon, 04 Apr 2022 10:33:34.036244000 UTC +00:00>,
 #<Person:0x00007f7c89e51a48
  id: 3,
  name: "Joe Smith",
  age: 32,
  created_at: Mon, 04 Apr 2022 10:33:34.039872000 UTC +00:00,
  updated_at: Mon, 04 Apr 2022 10:33:34.039872000 UTC +00:00>]
```
