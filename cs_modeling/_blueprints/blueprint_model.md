---
layout: apidoc
title: Modeling a blueprint
date: "2016-04-30 13:02:32 +0300"
order: 7
---
A blueprint typically contains a collection of applications
with additional information on how to deploy them.

@row
##### orchestration
The orchestration section defines the basic artifacts or image to use for the app.
- **deploy**: The application spec describes its infrastructure requirements.
This can have a different meaning in different clouds.
- **healthcheck**: This section contains information about the artifact of the
applications and how its identified.
- **cleanup**: This section contains information about the artifact of the
applications and how its identified.
@column
{% highlight yaml %}
# my-application.yaml
{% github_sample /QualiNext/modeling_examples/master/basic_example/demoapp_webtests_blueprint.yaml tag:pre %}
{% endhighlight %}
