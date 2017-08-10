---
layout: apidoc
title: Infrastructure spec
date: "2016-04-30 13:02:32 +0300"
order: 7
---
Defining infrastructure spec is a good way to
@row
@column
{% highlight yaml %}
# infra-spec.yaml
{% github_sample /QualiNext/modeling_examples/master/basic_example/instance_specs/low_end_instance.aws.yaml tag:pre %}
{% endhighlight %}

@column

@row
#### metadata
The application section defines the basic artifacts or image to use for the app.
- **name**: Use this field to specify an image which should be used as a baseline for this application.
- **cloud**: A list of tag names and tag values that will be assigned to instances
running this application.
@column
{% highlight yaml %}
{% github_sample /QualiNext/modeling_examples/master/basic_example/instance_specs/low_end_instance.aws.yaml tag:metadata %}
{% endhighlight %}

@column

@row
@column
{% highlight yaml %}
{% github_sample /QualiNext/modeling_examples/master/basic_example/instance_specs/low_end_instance.aws.yaml tag:compute %}
{% endhighlight %}

@column
{% highlight yaml %}
{% github_sample /QualiNext/modeling_examples/master/basic_example/instance_specs/low_end_instance.kub.yaml tag:compute %}
{% endhighlight %}

@row
@column
{% highlight yaml %}
{% github_sample /QualiNext/modeling_examples/master/basic_example/instance_specs/low_end_instance.aws.yaml tag:storage %}
{% endhighlight %}

@column
